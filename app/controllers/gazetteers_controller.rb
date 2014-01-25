class GazetteersController < ApplicationController
  before_action :set_gazetteer, only: [:show, :edit, :update, :destroy]


  # GET /gazetteers
  # GET /gazetteers.json
  def index
    if params[:search].present?
      # 查找附近50公里的地点
      @gazetteers = Gazetteer.near(params[:search], 50, :unit => :km).paginate(:page => params[:page])
      @hash = Gmaps4rails.build_markers(@gazetteers) do |gazetteer, marker|
        marker.lat gazetteer.latitude
        marker.lng gazetteer.longitude
        marker.infowindow [gazetteer.name, gazetteer.latitude, gazetteer.longitude].compact.join(', ')
        end
    else
      @gazetteers = Gazetteer.paginate(:page => params[:page])
      @hash = Gmaps4rails.build_markers(@gazetteers) do |gazetteer, marker|
        marker.lat gazetteer.latitude
        marker.lng gazetteer.longitude
        marker.infowindow gazetteer.name
        end
        respond_to do |format|
          format.html
          format.csv { render text: @gazetteers.to_csv }
          format.xls { send_data @gazetteers.to_csv(col_sep: "\t") }
        end
      end
    end

  # GET /gazetteers/1
  # GET /gazetteers/1.json
  def show
    @gazetteer = Gazetteer.find(params[:id])
    @hash = Gmaps4rails.build_markers(@gazetteer) do |gaz, marker|
      marker.lat gaz.latitude
      marker.lng gaz.longitude
      marker.infowindow gaz.name
    end
  end

  # GET /gazetteers/new
  def new
    @gazetteer = Gazetteer.new
    @categories = Category.find(:all, :select => 'id, name')
  end

  # GET /gazetteers/1/edit
  def edit
  end

  # POST /gazetteers
  # POST /gazetteers.json
  def create
    @gazetteer = Gazetteer.new(gazetteer_params)

    respond_to do |format|
      if @gazetteer.save
        format.html { redirect_to @gazetteer, notice: 'Gazetteer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gazetteer }
      else
        format.html { render action: 'new' }
        format.json { render json: @gazetteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gazetteers/1
  # PATCH/PUT /gazetteers/1.json
  def update
    respond_to do |format|
      if @gazetteer.update(gazetteer_params)
        format.html { redirect_to @gazetteer, notice: 'Gazetteer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gazetteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gazetteers/1
  # DELETE /gazetteers/1.json
  def destroy
    @gazetteer.destroy
    respond_to do |format|
      format.html { redirect_to gazetteers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gazetteer
      @gazetteer = Gazetteer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gazetteer_params
      params.require(:gazetteer).permit(:name, :address, :latitude, :longitude, :gmaps, :category_id, :user_id)
    end
end

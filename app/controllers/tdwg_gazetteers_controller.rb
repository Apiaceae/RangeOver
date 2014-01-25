class TdwgGazetteersController < ApplicationController
  before_action :set_tdwg_gazetteer, only: [:show, :edit, :update, :destroy]

  # GET /tdwg_gazetteers
  # GET /tdwg_gazetteers.json
  def index
    @tdwg_gazetteers = TdwgGazetteer.all.paginate(:page => params[:page])
  end

  # GET /tdwg_gazetteers/1
  # GET /tdwg_gazetteers/1.json
  def show
  end

  # GET /tdwg_gazetteers/new
  def new
    @tdwg_gazetteer = TdwgGazetteer.new
  end

  # GET /tdwg_gazetteers/1/edit
  def edit
  end

  # POST /tdwg_gazetteers
  # POST /tdwg_gazetteers.json
  def create
    @tdwg_gazetteer = TdwgGazetteer.new(tdwg_gazetteer_params)

    respond_to do |format|
      if @tdwg_gazetteer.save
        format.html { redirect_to @tdwg_gazetteer, notice: 'Tdwg gazetteer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tdwg_gazetteer }
      else
        format.html { render action: 'new' }
        format.json { render json: @tdwg_gazetteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tdwg_gazetteers/1
  # PATCH/PUT /tdwg_gazetteers/1.json
  def update
    respond_to do |format|
      if @tdwg_gazetteer.update(tdwg_gazetteer_params)
        format.html { redirect_to @tdwg_gazetteer, notice: 'Tdwg gazetteer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tdwg_gazetteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tdwg_gazetteers/1
  # DELETE /tdwg_gazetteers/1.json
  def destroy
    @tdwg_gazetteer.destroy
    respond_to do |format|
      format.html { redirect_to tdwg_gazetteers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tdwg_gazetteer
      @tdwg_gazetteer = TdwgGazetteer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tdwg_gazetteer_params
      params.require(:tdwg_gazetteer).permit(:gazetteer, :description, :tdwg_level_four_id, :kew_region, :kew_region_code, :kew_region_subdivison, :synonym)
    end
end

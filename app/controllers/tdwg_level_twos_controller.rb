class TdwgLevelTwosController < ApplicationController
  before_action :set_tdwg_level_two, only: [:show, :edit, :update, :destroy]

  # GET /tdwg_level_twos
  # GET /tdwg_level_twos.json
  def index
    @tdwg_level_twos = TdwgLevelTwo.all.paginate(:page => params[:page])
  end

  # GET /tdwg_level_twos/1
  # GET /tdwg_level_twos/1.json
  def show
  end

  # GET /tdwg_level_twos/new
  def new
    @tdwg_level_two = TdwgLevelTwo.new
  end

  # GET /tdwg_level_twos/1/edit
  def edit
  end

  # POST /tdwg_level_twos
  # POST /tdwg_level_twos.json
  def create
    @tdwg_level_two = TdwgLevelTwo.new(tdwg_level_two_params)

    respond_to do |format|
      if @tdwg_level_two.save
        format.html { redirect_to @tdwg_level_two, notice: 'Tdwg level two was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tdwg_level_two }
      else
        format.html { render action: 'new' }
        format.json { render json: @tdwg_level_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tdwg_level_twos/1
  # PATCH/PUT /tdwg_level_twos/1.json
  def update
    respond_to do |format|
      if @tdwg_level_two.update(tdwg_level_two_params)
        format.html { redirect_to @tdwg_level_two, notice: 'Tdwg level two was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tdwg_level_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tdwg_level_twos/1
  # DELETE /tdwg_level_twos/1.json
  def destroy
    @tdwg_level_two.destroy
    respond_to do |format|
      format.html { redirect_to tdwg_level_twos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tdwg_level_two
      @tdwg_level_two = TdwgLevelTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tdwg_level_two_params
      params.require(:tdwg_level_two).permit(:region, :description, :tdwg_level_one_id)
    end
end

class TdwgLevelFoursController < ApplicationController
  before_action :set_tdwg_level_four, only: [:show, :edit, :update, :destroy]

  # GET /tdwg_level_fours
  # GET /tdwg_level_fours.json
  def index
    @tdwg_level_fours = TdwgLevelFour.all.paginate(:page => params[:page])
  end

  # GET /tdwg_level_fours/1
  # GET /tdwg_level_fours/1.json
  def show
  end

  # GET /tdwg_level_fours/new
  def new
    @tdwg_level_four = TdwgLevelFour.new
  end

  # GET /tdwg_level_fours/1/edit
  def edit
  end

  # POST /tdwg_level_fours
  # POST /tdwg_level_fours.json
  def create
    @tdwg_level_four = TdwgLevelFour.new(tdwg_level_four_params)

    respond_to do |format|
      if @tdwg_level_four.save
        format.html { redirect_to @tdwg_level_four, notice: 'Tdwg level four was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tdwg_level_four }
      else
        format.html { render action: 'new' }
        format.json { render json: @tdwg_level_four.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tdwg_level_fours/1
  # PATCH/PUT /tdwg_level_fours/1.json
  def update
    respond_to do |format|
      if @tdwg_level_four.update(tdwg_level_four_params)
        format.html { redirect_to @tdwg_level_four, notice: 'Tdwg level four was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tdwg_level_four.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tdwg_level_fours/1
  # DELETE /tdwg_level_fours/1.json
  def destroy
    @tdwg_level_four.destroy
    respond_to do |format|
      format.html { redirect_to tdwg_level_fours_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tdwg_level_four
      @tdwg_level_four = TdwgLevelFour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tdwg_level_four_params
      params.require(:tdwg_level_four).permit(:country, :description, :tdwg_level_three_id, :code, :iso_code)
    end
end

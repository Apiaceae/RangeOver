class TdwgLevelThreesController < ApplicationController
  before_action :set_tdwg_level_three, only: [:show, :edit, :update, :destroy]

  # GET /tdwg_level_threes
  # GET /tdwg_level_threes.json
  def index
    @tdwg_level_threes = TdwgLevelThree.all.paginate(:page => params[:page])
  end

  # GET /tdwg_level_threes/1
  # GET /tdwg_level_threes/1.json
  def show
  end

  # GET /tdwg_level_threes/new
  def new
    @tdwg_level_three = TdwgLevelThree.new
  end

  # GET /tdwg_level_threes/1/edit
  def edit
  end

  # POST /tdwg_level_threes
  # POST /tdwg_level_threes.json
  def create
    @tdwg_level_three = TdwgLevelThree.new(tdwg_level_three_params)

    respond_to do |format|
      if @tdwg_level_three.save
        format.html { redirect_to @tdwg_level_three, notice: 'Tdwg level three was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tdwg_level_three }
      else
        format.html { render action: 'new' }
        format.json { render json: @tdwg_level_three.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tdwg_level_threes/1
  # PATCH/PUT /tdwg_level_threes/1.json
  def update
    respond_to do |format|
      if @tdwg_level_three.update(tdwg_level_three_params)
        format.html { redirect_to @tdwg_level_three, notice: 'Tdwg level three was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tdwg_level_three.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tdwg_level_threes/1
  # DELETE /tdwg_level_threes/1.json
  def destroy
    @tdwg_level_three.destroy
    respond_to do |format|
      format.html { redirect_to tdwg_level_threes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tdwg_level_three
      @tdwg_level_three = TdwgLevelThree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tdwg_level_three_params
      params.require(:tdwg_level_three).permit(:area, :description, :tdwg_level_two_id, :code, :iso_code)
    end
end

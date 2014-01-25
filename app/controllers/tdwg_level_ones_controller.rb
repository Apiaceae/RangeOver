class TdwgLevelOnesController < ApplicationController
  before_action :set_tdwg_level_one, only: [:show, :edit, :update, :destroy]

  # GET /tdwg_level_ones
  # GET /tdwg_level_ones.json
  def index
    @tdwg_level_ones = TdwgLevelOne.all
  end

  # GET /tdwg_level_ones/1
  # GET /tdwg_level_ones/1.json
  def show
  end

  # GET /tdwg_level_ones/new
  def new
    @tdwg_level_one = TdwgLevelOne.new
  end

  # GET /tdwg_level_ones/1/edit
  def edit
  end

  # POST /tdwg_level_ones
  # POST /tdwg_level_ones.json
  def create
    @tdwg_level_one = TdwgLevelOne.new(tdwg_level_one_params)

    respond_to do |format|
      if @tdwg_level_one.save
        format.html { redirect_to @tdwg_level_one, notice: 'Tdwg level one was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tdwg_level_one }
      else
        format.html { render action: 'new' }
        format.json { render json: @tdwg_level_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tdwg_level_ones/1
  # PATCH/PUT /tdwg_level_ones/1.json
  def update
    respond_to do |format|
      if @tdwg_level_one.update(tdwg_level_one_params)
        format.html { redirect_to @tdwg_level_one, notice: 'Tdwg level one was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tdwg_level_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tdwg_level_ones/1
  # DELETE /tdwg_level_ones/1.json
  def destroy
    @tdwg_level_one.destroy
    respond_to do |format|
      format.html { redirect_to tdwg_level_ones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tdwg_level_one
      @tdwg_level_one = TdwgLevelOne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tdwg_level_one_params
      params.require(:tdwg_level_one).permit(:continent, :description)
    end
end

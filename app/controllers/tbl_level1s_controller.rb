class TblLevel1sController < ApplicationController
  before_action :set_tbl_level1, only: [:show, :edit, :update, :destroy]

  # GET /tbl_level1s
  # GET /tbl_level1s.json
  def index
    @tbl_level1s = TblLevel1.all
  end

  # GET /tbl_level1s/1
  # GET /tbl_level1s/1.json
  def show
  end

  # GET /tbl_level1s/new
  def new
    @tbl_level1 = TblLevel1.new
  end

  # GET /tbl_level1s/1/edit
  def edit
  end

  # POST /tbl_level1s
  # POST /tbl_level1s.json
  def create
    @tbl_level1 = TblLevel1.new(tbl_level1_params)

    respond_to do |format|
      if @tbl_level1.save
        format.html { redirect_to @tbl_level1, notice: 'Tbl level1 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tbl_level1 }
      else
        format.html { render action: 'new' }
        format.json { render json: @tbl_level1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbl_level1s/1
  # PATCH/PUT /tbl_level1s/1.json
  def update
    respond_to do |format|
      if @tbl_level1.update(tbl_level1_params)
        format.html { redirect_to @tbl_level1, notice: 'Tbl level1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tbl_level1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbl_level1s/1
  # DELETE /tbl_level1s/1.json
  def destroy
    @tbl_level1.destroy
    respond_to do |format|
      format.html { redirect_to tbl_level1s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_level1
      @tbl_level1 = TblLevel1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tbl_level1_params
      params.require(:tbl_level1).permit(:continent, :description)
    end
end

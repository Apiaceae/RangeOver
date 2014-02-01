class GeolocationsController < ApplicationController
  before_action :set_geolocation, only: [:show, :edit, :update, :destroy]

  # GET /geolocations
  # GET /geolocations.json
  def index
    @geolocations = Geolocation.all
  end

  # GET /geolocations/1
  # GET /geolocations/1.json
  def show
  end

  # GET /geolocations/new
  def new
    @geolocation = Geolocation.new
  end

  # GET /geolocations/1/edit
  def edit
  end

  # POST /geolocations
  # POST /geolocations.json
  def create
    @geolocation = Geolocation.new(geolocation_params)

    respond_to do |format|
      if @geolocation.save
        format.html { redirect_to @geolocation, notice: 'Geolocation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @geolocation }
      else
        format.html { render action: 'new' }
        format.json { render json: @geolocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geolocations/1
  # PATCH/PUT /geolocations/1.json
  def update
    respond_to do |format|
      if @geolocation.update(geolocation_params)
        format.html { redirect_to @geolocation, notice: 'Geolocation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @geolocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geolocations/1
  # DELETE /geolocations/1.json
  def destroy
    @geolocation.destroy
    respond_to do |format|
      format.html { redirect_to geolocations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geolocation
      @geolocation = Geolocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geolocation_params
      params.require(:geolocation).permit(:title, :description, :location)
    end
end

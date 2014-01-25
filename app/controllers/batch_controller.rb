class BatchController < ApplicationController
  def index
  end

  def create
    @gazetteer = Gazetteer.new(gazetteer_params)
    address_list = []
    params[:gazetteer].each do |key, value|
      address_list = value.split(/\r\n/)
    end

    # address_list = ['China,Guangxi,凌乐县,,甘田公社山洲大队', 'China,Guangxi,Xing\'an Xian,,两金区佑安乡']
    line_number = address_list.length

    addresses = []
    for i in 0..line_number-1
      y = Geocoder.search(address_list[i])
      y.each do |z|
        # activerecord-import methods
      addresses << Gazetteer.new(
        :address => address_list[i], :latitude => z.latitude.to_s,
        :longitude => z.longitude.to_s, :category_id => 1)
      end
    end
    Gazetteer.import addresses
    @gazetteer = addresses[0]

    # respond_to do |format|
    #   format.html { render action: 'new' }
    # end
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


   private
    # Use callbacks to share common setup or constraints between actions.
    def set_gazetteer
      @gazetteer = Gazetteer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gazetteer_params
      params.require(:gazetteer).permit(:name, :address, :latitude, :longitude, :gmaps, :category_id)
    end
end

module TracksHelper
  def google_maps_api_key
      "AIzaSyD5vuFoJirfgRNu5y5HmlNmnb7dIDKjkp4"
    end
    
    def google_api_url
        "http://maps.googleapis.com/maps/api/js"
      end
      def google_api_access
          "#{google_api_url}?key=#{google_maps_api_key}&libraries=geometry&sensor=false"
        end
        def google_maps_api
            content_tag(:script,:type => "text/javascript",:src => google_api_access) do
            end
          end
          
  def track_id_to_js(id)
     content_tag(:script, :type => "text/javascript") do
       "var js_track_id = "+id.to_s;
     end
   end
end

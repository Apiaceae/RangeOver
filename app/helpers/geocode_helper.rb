module GeocodeHelper
  def google_maps_url
    "//maps.google.com/maps/api/js?v=3.13&language=zh&libraries=geometry&sensor=false"
  end

  def google_maps_geocode_url
    "//google-maps-utility-library-v3.googlecode.com/svn/tags/markerclustererplus/2.0.14/src/markerclusterer_packed.js"
  end

  def google_maps_api
    content_tag(:script, :type => "text/javascript", :src => google_maps_url) do
    end
  end

  def google_maps_geocode_api
    content_tag(:script, :type => "text/javascript", :src => google_maps_geocode_url) do
    end
  end

end

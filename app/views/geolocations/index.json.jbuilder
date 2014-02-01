json.array!(@geolocations) do |geolocation|
  json.extract! geolocation, :title, :description
  json.url geolocation_url(geolocation, format: :json)
end

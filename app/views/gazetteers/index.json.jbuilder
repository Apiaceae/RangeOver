json.array!(@gazetteers) do |gazetteer|
  json.extract! gazetteer, :full_address, :address, :latitude, :longitude, :gmaps
  json.url gazetteer_url(gazetteer, format: :json)
end

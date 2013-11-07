json.array!(@gazetteers) do |gazetteer|
  json.extract! gazetteer, :name, :address, :latitude, :longitude, :gmaps
  json.url gazetteer_url(gazetteer, format: :json)
end

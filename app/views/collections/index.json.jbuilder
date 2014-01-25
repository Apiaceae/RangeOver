json.array!(@collections) do |collection|
  json.extract! collection, :uniqueid, :herbarium, :accession, :barcode, :collector, :collnumber, :colldate, :country, :province, :county, :locality, :latitude, :longitude
  json.url collection_url(collection, format: :json)
end

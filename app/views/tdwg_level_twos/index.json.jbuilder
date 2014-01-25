json.array!(@tdwg_level_twos) do |tdwg_level_two|
  json.extract! tdwg_level_two, :region, :description, :tdwg_level_one_id
  json.url tdwg_level_two_url(tdwg_level_two, format: :json)
end

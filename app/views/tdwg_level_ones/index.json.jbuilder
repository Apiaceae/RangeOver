json.array!(@tdwg_level_ones) do |tdwg_level_one|
  json.extract! tdwg_level_one, :continent, :description
  json.url tdwg_level_one_url(tdwg_level_one, format: :json)
end

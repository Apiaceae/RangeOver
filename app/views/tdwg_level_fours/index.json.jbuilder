json.array!(@tdwg_level_fours) do |tdwg_level_four|
  json.extract! tdwg_level_four, :country, :description, :tdwg_level_three_id, :code, :iso_code
  json.url tdwg_level_four_url(tdwg_level_four, format: :json)
end

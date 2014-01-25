json.array!(@tdwg_level_threes) do |tdwg_level_three|
  json.extract! tdwg_level_three, :area, :description, :tdwg_level_two_id, :code, :iso_code
  json.url tdwg_level_three_url(tdwg_level_three, format: :json)
end

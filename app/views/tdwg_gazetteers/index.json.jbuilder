json.array!(@tdwg_gazetteers) do |tdwg_gazetteer|
  json.extract! tdwg_gazetteer, :gazetteer, :description, :tdwg_level_four_id, :kew_region, :kew_region_code, :kew_region_subdivison, :synonym
  json.url tdwg_gazetteer_url(tdwg_gazetteer, format: :json)
end

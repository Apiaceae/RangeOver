json.array!(@tbl_level1s) do |tbl_level1|
  json.extract! tbl_level1, :continent, :description
  json.url tbl_level1_url(tbl_level1, format: :json)
end

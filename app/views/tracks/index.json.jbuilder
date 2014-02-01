json.array!(@tracks) do |track|
  json.extract! track, :title, :description
  json.url track_url(track, format: :json)
end

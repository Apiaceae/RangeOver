json.array!(@events) do |event|
  json.extract! event, :user_id, :title, :description, :start_at, :end_at, :member
  json.url event_url(event, format: :json)
end

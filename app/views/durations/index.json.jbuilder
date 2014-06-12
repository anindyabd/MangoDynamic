json.array!(@durations) do |duration|
  json.extract! duration, :id, :title, :length, :rate, :discount
  json.url duration_url(duration, format: :json)
end

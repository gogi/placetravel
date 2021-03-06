json.array!(trips) do |trip|
  json.extract! trip, :id, :name, :description, :address, :date, :user_id
  json.url trip_url(trip, format: :json)
end

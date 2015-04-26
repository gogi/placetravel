json.array!(@places) do |place|
  json.extract! place, :id, :user_id, :trip_id, :url, :description, :price
  json.url place_url(place, format: :json)
end

json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :price, :rank, :star
  json.url hotel_url(hotel, format: :json)
end

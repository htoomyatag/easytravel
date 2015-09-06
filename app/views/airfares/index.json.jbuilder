json.array!(@airfares) do |airfare|
  json.extract! airfare, :id, :name, :price, :rank
  json.url airfare_url(airfare, format: :json)
end

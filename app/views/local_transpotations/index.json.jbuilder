json.array!(@local_transpotations) do |local_transpotation|
  json.extract! local_transpotation, :id, :name, :price, :rank
  json.url local_transpotation_url(local_transpotation, format: :json)
end

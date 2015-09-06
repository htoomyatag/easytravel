json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :airfare_id, :local_transpotation_id, :guide_id, :travel_detail_id, :hotel_id
  json.url destination_url(destination, format: :json)
end

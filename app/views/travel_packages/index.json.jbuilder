json.array!(@travel_packages) do |travel_package|
  json.extract! travel_package, :id, :name, :airfare, :local_transpotation_id, :guide_id, :travel_detail_id, :hotel_id
  json.url travel_package_url(travel_package, format: :json)
end

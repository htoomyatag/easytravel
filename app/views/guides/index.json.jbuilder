json.array!(@guides) do |guide|
  json.extract! guide, :id, :name, :price, :rank
  json.url guide_url(guide, format: :json)
end

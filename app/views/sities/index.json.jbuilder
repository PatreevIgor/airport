json.array!(@sities) do |sity|
  json.extract! sity, :id, :name, :x, :y
  json.url sity_url(sity, format: :json)
end

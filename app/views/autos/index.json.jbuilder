json.array!(@autos) do |auto|
  json.extract! auto, :id, :name, :speed
  json.url auto_url(auto, format: :json)
end

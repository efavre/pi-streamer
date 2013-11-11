json.array!(@cameras) do |camera|
  json.extract! camera, 
  json.url camera_url(camera, format: :json)
end

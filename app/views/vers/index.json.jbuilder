json.array!(@vers) do |ver|
  json.extract! ver, :id, :chapter, :test
  json.url ver_url(ver, format: :json)
end

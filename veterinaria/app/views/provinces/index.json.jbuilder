json.array!(@provinces) do |province|
  json.extract! province, :id, :name, :department_id
  json.url province_url(province, format: :json)
end

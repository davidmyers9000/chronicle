json.array!(@groups) do |group|
  json.extract! group, :id, :title, :description
  json.url group_url(group, format: :json)
end

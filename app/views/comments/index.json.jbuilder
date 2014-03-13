json.array!(@comments) do |comment|
  json.extract! comment, :id, :source, :text
  json.url comment_url(comment, format: :json)
end

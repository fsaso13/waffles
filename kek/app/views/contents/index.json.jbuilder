json.array!(@contents) do |content|
  json.extract! content, :id, :name, :description, :section_id
  json.url content_url(content, format: :json)
end

json.array!(@suggestions) do |suggestion|
  json.extract! suggestion, :id, :title, :description, :user_id
  json.url suggestion_url(suggestion, format: :json)
end

json.array!(@donations) do |donation|
  json.extract! donation, :id, :title, :description, :user_id
  json.url donation_url(donation, format: :json)
end

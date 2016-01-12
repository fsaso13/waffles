json.array!(@account_petitions) do |account_petition|
  json.extract! account_petition, :id, :title, :description
  json.url account_petition_url(account_petition, format: :json)
end

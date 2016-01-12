json.array!(@repports) do |repport|
  json.extract! repport, :id, :title, :date, :preview, :description
  json.url repport_url(repport, format: :json)
end

json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :description, :date, :time
  json.url activity_url(activity, format: :json)
end

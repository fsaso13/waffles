json.array!(@room_petitions) do |room_petition|
  json.extract! room_petition, :id, :user_id, :room_id, :occupied
  json.url room_petition_url(room_petition, format: :json)
end

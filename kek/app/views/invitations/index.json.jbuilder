json.array!(@invitations) do |invitation|
  json.extract! invitation, :id, :description, :user_id, :activity_id
  json.url invitation_url(invitation, format: :json)
end

class RequestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :gamertag, :description, :lobby_id, :user_id
end

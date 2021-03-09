class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :gamertag, :platform, :created_at
end

class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :gamertag, :platform, :region, :created_at
end
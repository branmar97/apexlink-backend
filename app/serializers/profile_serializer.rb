class ProfileSerializer
  include FastJsonapi::ObjectSerializer
  attributes :bio, :link, :avatar_url, :slug, :updated_at, :user
end

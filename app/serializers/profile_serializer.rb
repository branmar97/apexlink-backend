class ProfileSerializer
  include FastJsonapi::ObjectSerializer
  attributes :bio, :link, :slug, :updated_at, :user
end

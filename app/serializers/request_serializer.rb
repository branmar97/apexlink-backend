class RequestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :description, :lobby, :user, :created_at
end

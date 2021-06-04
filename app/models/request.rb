class Request < ApplicationRecord
  belongs_to :lobby
  belongs_to :user

  validates :user_id, uniqueness: { scope: :lobby_id, message: "Only one request permitted per lobby" }
  validates :description, length: { maximum: 100,
    message: "%{count} characters is the maximum allowed" }
  validates :description, length: { minimum: 10,
    message: "Must be at least %{count} characters" }
end

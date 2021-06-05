class Request < ApplicationRecord
  belongs_to :lobby
  belongs_to :user

  validates :user_id, uniqueness: { scope: :lobby_id, message: "Only one request permitted per lobby" }
  validates :description, length: { maximum: 100,
    message: "%{count} characters is the maximum allowed" }
  validates :description, length: { minimum: 10,
    message: "Must be at least %{count} characters" }
  validate :not_lobby_admin


  private

  def not_lobby_admin
    if self.user_id == self.lobby.user_id
      errors.add(:is_admin, "Lobby host cannot make a request")
    end
  end
end

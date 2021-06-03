class Request < ApplicationRecord
  belongs_to :lobby
  belongs_to :user

  validates :user_id, uniqueness: { scope: :lobby_id }
end

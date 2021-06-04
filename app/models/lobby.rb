class Lobby < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  has_many :users, through: :requests

  validates :user, presence: true
  validates :region, presence: true
  validates :platform, presence: true
  validates :gamemode, presence: { message: "Gamemode can't be blank" }
  validates :description, presence: { message: "Description can't be blank "}
  validates :description, length: { minimum: 25,
    message: "Description must be at least %{count} characters" }
  validates :skill_level, presence: { message: "Skill level can't be blank" }

  def short_desc 
    self.description.truncate(30)
  end
end

class Lobby < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  has_many :users, through: :requests

  validates :user, presence: true
  validates :region, presence: true
  validates :platform, presence: true
  validates :gamemode, presence: true
  validates :description, presence: true
  validates :description, length: { minimum: 50 }
  validates :mic_required, presence: true
  validates :skill_level, presence: true

  def short_desc 
    self.description.truncate(30)
  end
end

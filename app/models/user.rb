class User < ApplicationRecord
  has_many :requests, dependent: :destroy
  has_many :lobbies, dependent: :destroy
  has_one :profile, dependent: :destroy
  after_create :init_profile

  validates :gamertag, uniqueness: true

  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  private

  def init_profile
    self.create_profile!
  end 
end
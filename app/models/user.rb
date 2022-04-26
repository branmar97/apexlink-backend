class User < ApplicationRecord
  has_many :requests, dependent: :destroy
  has_many :lobbies, dependent: :destroy
  has_one :profile, dependent: :destroy
  

  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
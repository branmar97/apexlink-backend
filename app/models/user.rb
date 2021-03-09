class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true
  has_many :sessions
  
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
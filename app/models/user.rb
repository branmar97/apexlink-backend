class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true
  
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
class User < ApplicationRecord
  has_many :requests
  has_many :sessions, through: :requests
  

  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
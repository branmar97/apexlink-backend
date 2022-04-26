class Profile < ApplicationRecord
  belongs_to :user

  validates :bio, length: { maximum: 150,
  message: "Bio must be no more than %{count} characters" }
  validates :link, length: { maximum: 200,
  message: "Link must be no more than %{count} characters" }
end

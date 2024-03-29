class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  after_validation :set_slug

  validates :bio, length: { maximum: 150,
  message: "Bio must be no more than %{count} characters" }
  validates :link, length: { maximum: 200,
  message: "Link must be no more than %{count} characters" }

  def avatar_url
    Rails.application.routes.url_helpers.url_for(avatar) if avatar.attached?
  end

  def to_param
    self.slug
  end

  private

  def set_slug
    self.slug = self.user.gamertag.to_s.parameterize
  end 
end

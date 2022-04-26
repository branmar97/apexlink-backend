class Profile < ApplicationRecord
  belongs_to :user
  after_validation :set_slug

  validates :bio, length: { maximum: 150,
  message: "Bio must be no more than %{count} characters" }
  validates :link, length: { maximum: 200,
  message: "Link must be no more than %{count} characters" }

  private

  def set_slug
    self.slug = self.user.gamertag.to_s.parameterize + "-#{self.user.id}"
  end 
end

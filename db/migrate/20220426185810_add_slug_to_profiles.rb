class AddSlugToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :slug, :string, unique: true
  end
end

class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.text :bio
      t.string :link
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

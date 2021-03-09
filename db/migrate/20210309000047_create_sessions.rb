class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :region
      t.string :platform
      t.string :gamemode
      t.text :description
      t.boolean :mic_required
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

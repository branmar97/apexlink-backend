class AddToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :gamertag, :string, default: "", null: false
    add_column :users, :platform, :string, default: "", null: false
  end
end

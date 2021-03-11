class AddGamertagToLobbies < ActiveRecord::Migration[6.1]
  def change
    add_column :lobbies, :gamertag, :string
  end
end

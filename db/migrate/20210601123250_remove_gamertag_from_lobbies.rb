class RemoveGamertagFromLobbies < ActiveRecord::Migration[6.1]
  def change
    remove_column :lobbies, :gamertag
  end
end

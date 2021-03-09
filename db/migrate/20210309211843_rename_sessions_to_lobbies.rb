class RenameSessionsToLobbies < ActiveRecord::Migration[6.1]
  def change
    rename_table :sessions, :lobbies
  end
end

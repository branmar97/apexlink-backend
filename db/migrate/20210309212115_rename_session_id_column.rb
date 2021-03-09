class RenameSessionIdColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :requests, :session_id, :lobby_id
    
  end
end

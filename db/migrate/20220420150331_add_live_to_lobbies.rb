class AddLiveToLobbies < ActiveRecord::Migration[6.1]
  def change
    add_column :lobbies, :live, :boolean, default: true
  end
end

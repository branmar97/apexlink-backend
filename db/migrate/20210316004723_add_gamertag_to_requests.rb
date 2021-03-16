class AddGamertagToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :gamertag, :string
  end
end

class AddDescriptionToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :description, :text
  end
end

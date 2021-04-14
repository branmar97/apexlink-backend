class AddRegionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :region, :string, default: "", null: false
  end
end

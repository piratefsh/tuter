class AddLocationIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location_ID, :integer
  end
end

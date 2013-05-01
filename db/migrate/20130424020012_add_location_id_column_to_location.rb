class AddLocationIdColumnToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :location_ID, :string
  end
end

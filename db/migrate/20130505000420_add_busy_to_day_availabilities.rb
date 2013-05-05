class AddBusyToDayAvailabilities < ActiveRecord::Migration
  def change
    add_column :day_availabilities, :busy, :boolean
  end
end

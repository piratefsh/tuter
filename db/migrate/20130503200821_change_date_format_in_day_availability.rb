class ChangeDateFormatInDayAvailability < ActiveRecord::Migration
  def up
    change_column :day_availabilities, :start_time, :datetime
    change_column :day_availabilities, :end_time, :datetime
  end

  def down
    change_column :day_availabilities, :start_time, :date
    change_column :day_availabilities, :end_time, :date
  end
end

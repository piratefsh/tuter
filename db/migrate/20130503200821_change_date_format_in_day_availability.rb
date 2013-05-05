class ChangeDateFormatInDayAvailability < ActiveRecord::Migration
  def up
    change_column :day_availabilities, :start_time, :time
    change_column :day_availabilities, :end_time, :time
  end

end

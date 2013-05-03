class AddDayAvailabilitiesToWeekAvailability < ActiveRecord::Migration
  def change
    add_column :day_availabilities, :week_availability_id, :integer
  end
end

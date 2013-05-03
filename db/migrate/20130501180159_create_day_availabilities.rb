class CreateDayAvailabilities < ActiveRecord::Migration
  def change
    create_table :day_availabilities do |t|
      t.string :day
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end

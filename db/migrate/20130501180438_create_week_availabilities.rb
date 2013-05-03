class CreateWeekAvailabilities < ActiveRecord::Migration
  def change
    create_table :week_availabilities do |t|
      t.string :type

      t.timestamps
    end
  end
end

class AddUserToWeekAvailabilities < ActiveRecord::Migration
  def change
    add_column :week_availabilities, :user_id, :integer
  end
end

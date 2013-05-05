class RenameTypeColumnWeekAvailabilities < ActiveRecord::Migration
  def up
    rename_column :week_availabilities, :type, :avail_type
  end

  def down
  end
end

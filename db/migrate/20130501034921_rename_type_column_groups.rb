class RenameTypeColumnGroups < ActiveRecord::Migration
  def up
    rename_column :groups, :type, :group_type
  end

  def down
  end
end

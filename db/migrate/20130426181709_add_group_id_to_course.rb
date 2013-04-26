class AddGroupIdToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :group_id, :integer
  end
end

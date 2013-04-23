class AddGroupIdToStudentIds < ActiveRecord::Migration
  def change
  	add_column :student_ids, :group_id, :integer
  end
end

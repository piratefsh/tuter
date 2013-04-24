class AddGroupIdToTutor < ActiveRecord::Migration
  def change
  	add_column :tutor_ids, :group_id, :integer
  end
end

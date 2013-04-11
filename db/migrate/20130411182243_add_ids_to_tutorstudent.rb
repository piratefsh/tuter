class AddIdsToTutorstudent < ActiveRecord::Migration
  def change
  	add_column :student_ids, :sid, :integer
  	add_column :tutor_ids, :tid, :integer
  end
end

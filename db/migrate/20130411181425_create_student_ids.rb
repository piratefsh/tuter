class CreateStudentIds < ActiveRecord::Migration
  def change
    create_table :student_ids do |t|

     t.timestamps
    end
  end
end

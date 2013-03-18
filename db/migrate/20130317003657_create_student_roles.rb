class CreateStudentRoles < ActiveRecord::Migration
  def change
    create_table :student_roles do |t|

      t.timestamps
    end
  end
end

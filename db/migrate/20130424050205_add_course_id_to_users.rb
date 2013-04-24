class AddCourseIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :course_ID, :integer
  end
end

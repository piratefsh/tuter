class AddCourseCodeToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :course_code, :string
  end
end

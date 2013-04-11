# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  course_ID  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "create_course" do
    course = Course.new
    assert course.invalid?, 'Must have name'
    course.name = 'PHI 101'
    assert course.valid?, 'Should be able to create course'
    assert course.save, 'Should save into the database'
  end

  test "delete_course" do
  	
  end
end

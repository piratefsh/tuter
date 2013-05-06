# == Schema Information
#
# Table name: abilities
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AbilityTest < ActiveSupport::TestCase
  test "what_can_a_student_do" do
    student = users(:user1)
    assert_equal(100, student.roles_mask, 'Should be 100') 
    ability = Ability.new(student)
    p student
    p ability  
  end
end

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
    # pp student
    assert_equal(1, student.roles_mask, 'Should be 1')
    ability = Ability.new(student)
    assert ability.can?(:destroy, :cs)
  end
  test "what_can_a_tutor_do" do
    tutor = users(:user2)
    # pp tutor
    assert_equal(2, tutor.roles_mask, 'Should be 2')
    ability = Ability.new(tutor)    
    assert ability.can?(:destroy, :cs)
  end
  test "what_can_an_org_do" do
    org = users(:user3)
    assert_equal(4, org.roles_mask, 'Should be 4')
    ability = Ability.new(org)
    assert ability.can?(:destroy, :cs)
  end
  test "what_can_a_hacker_do" do
    anon = users(:user4)
    # range = 1..7
    # assert_equal(org.roles_mask, 'YES!!!')
    ability = Ability.new(anon)
    assert !ability.can?(:destroy, :cs)
  end
  # test "possible_roles" do
    # user = users(:user1)
    # range = 1..7
    # assert_difference('range.min-user.roles_mask', >=0)
  # end
end

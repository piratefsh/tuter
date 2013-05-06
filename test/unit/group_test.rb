# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  group_ID   :integer
#  desc       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  location   :string(255)
#  group_type :string(255)
#

require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  test "3_group_types" do
    assert_equal(3, Group.group_types.count)
  end
  
  test "create_group" do
    group = Group.new
    assert group.invalid?, 'Must have name, location and group_type'
    group.name = 'PHI 101'
    group.location = 'Chemistry B220'
    group.group_type = 'Drop-In'
    assert group.valid?, 'Should be able to create group'
    assert group.save, 'Should save into the database'
  end
  
  test "delete_group" do
    Group.create(:name=>'PHI 101', :location=>'Chemistry B220', :group_type=>'Drop-In')
    group = Group.find_by_name('CS 302')
    assert group.nil?
    group = Group.find_by_name('PHI 101')
    assert !group.nil?, 'Should exist'
    assert group.destroy, 'Should delete from database'
  end
  
  test "existing_group" do
    group = groups(:cs)
    assert group.valid?
  end
end

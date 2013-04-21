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
#

require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  test "create_group" do
    group = Group.new
    assert group.invalid?, 'Must have name and location'    
    group.name = 'PHI 101'
    group.location = 'Chemistry B220'
    assert group.valid?, 'Shoudl be able to crete group'
    assert group.save, 'Should save into the database'
  end
  test "delete_group" do
  	Group.create(:name=>'PHI 101')
  	group = Group.find_by_name('CS 302')
  	assert group.nil?
  end
end

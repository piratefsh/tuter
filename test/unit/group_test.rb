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
  end
end

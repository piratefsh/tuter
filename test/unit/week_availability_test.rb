# == Schema Information
#
# Table name: week_availabilities
#
#  id         :integer          not null, primary key
#  avail_type :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'test_helper'

class WeekAvailabilityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

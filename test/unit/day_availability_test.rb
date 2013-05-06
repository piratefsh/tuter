# == Schema Information
#
# Table name: day_availabilities
#
#  id                   :integer          not null, primary key
#  day                  :string(255)
#  start_time           :time
#  end_time             :time
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  week_availability_id :integer
#  busy                 :boolean
#

require 'test_helper'

class DayAvailabilityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

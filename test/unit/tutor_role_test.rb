# == Schema Information
#
# Table name: tutor_roles
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  tutor_ID       :integer
#  age            :integer
#  year_in_school :string(255)
#  rating         :float
#  transportation :boolean
#

require 'test_helper'

class TutorRoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

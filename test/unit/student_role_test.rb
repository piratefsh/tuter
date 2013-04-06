# == Schema Information
#
# Table name: student_roles
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  student_ID     :integer
#  age            :integer
#  year_in_school :string(255)
#  transportation :boolean
#

require 'test_helper'

class StudentRoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

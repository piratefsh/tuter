# == Schema Information
#
# Table name: organization_roles
#
#  id                :integer          not null, primary key
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  organization_ID   :integer
#  organization_name :string(255)
#

require 'test_helper'

class OrganizationRoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

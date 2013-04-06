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

class OrganizationRole < ActiveRecord::Base

	belongs_to :user
  # has_many :program

	attr_accessible :organization_ID, :organization_name

end

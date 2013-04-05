class OrganizationRole < ActiveRecord::Base

	belongs_to :user


	attr_accessible :organization_ID, :organization_name

end

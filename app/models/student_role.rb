# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string(255)
#  last_name              :string(255)
#  desc                   :text
#  uid                    :integer
#  provider               :string(255)
#  oauth_token            :string(255)
#  oauth_expires_at       :datetime
#  photo                  :string(255)
#  fb_profile             :string(255)
#  roles_mask             :integer
#

class StudentRole < User

	belongs_to :user
	has_many :groups

	attr_accessible :student_ID, :age, :year_in_school, :transportation

	
end

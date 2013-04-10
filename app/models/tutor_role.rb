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

class TutorRole < ActiveRecord::Base

	belongs_to :user
	has_many :groups

	attr_accessible :tutor_ID, :age, :year_in_school, :rating, :transportation
end

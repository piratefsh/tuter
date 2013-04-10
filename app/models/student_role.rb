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

class StudentRole < User

	belongs_to :user
	has_many :groups

	attr_accessible :student_ID, :age, :year_in_school, :transportation

	
end

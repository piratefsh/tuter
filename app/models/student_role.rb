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

class StudentRole < ActiveRecord::Base

	belongs_to :user


	attr_accessible :student_ID, :age, :year_in_school, :transportation
end

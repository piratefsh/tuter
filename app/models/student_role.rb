class StudentRole < ActiveRecord::Base

	belongs_to :user

	attr_accessible :student_ID, :age, :year_in_school, :transportation
end

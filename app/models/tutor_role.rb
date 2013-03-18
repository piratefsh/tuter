class TutorRole < ActiveRecord::Base

	belongs_to :user

	attr_accessible :tutor_ID, :age, :year_in_school, :rating, :transportation
end

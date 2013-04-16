# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  group_ID   :integer
#  desc       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Group < ActiveRecord::Base
  attr_accessible :desc, :id, :name, :location
  belongs_to :program
 
  has_many :student_ids
  has_many :tutor_ids
<<<<<<< HEAD
  validates :name, :location, :presence => true
end
=======

end
>>>>>>> b1ffc3972e3ffc37743de6d280aba6a06531263d

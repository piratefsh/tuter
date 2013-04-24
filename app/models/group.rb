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
  attr_accessible :desc, :id, :name, :location, :student_ids_attributes, :tutor_ids_attributes, :tutor_ids
  belongs_to :program
 
  has_many :student_ids
  has_many :tutor_ids
  after_destroy :cleanup

  accepts_nested_attributes_for :student_ids
  accepts_nested_attributes_for :tutor_ids

  private

  def cleanup
  	self.tutor_ids.destroy_all
  	self.student_ids.destroy_all
  end

end

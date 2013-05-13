# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  course_ID   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  course_code :string(255)
#  group_id    :integer
#

class Course < ActiveRecord::Base
  attr_accessible :course_ID, :name, :course_code
  validates :name, :presence => true
  belongs_to :user
  belongs_to :group

  def to_h
    json = Hash.new
    [:name, :course_code].each do |a|
        json[a] = self[a]
    end
    json
  end
end

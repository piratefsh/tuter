# == Schema Information
#
# Table name: student_ids
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sid        :integer
#  group_id   :integer
#

class StudentId < ActiveRecord::Base
  attr_accessible :sid, :group_id

  belongs_to :group

  def self.all_students
    students = Array.new
    User.all.each do |u|
        if u.role? :student 
            students << [u.full_name, u.id]
        end
    end

    students
  end

end

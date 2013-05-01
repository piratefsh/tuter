class StudentId < ActiveRecord::Base
  attr_accessible :sid, :group_id

  belongs_to :group

  def self.all_students
    students = Array.new
    User.all.each do |u|
        if u.role? :student 
            students << [u.last_name, u.id]
        end
    end

    students
  end

end

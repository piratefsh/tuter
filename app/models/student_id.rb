class StudentId < ActiveRecord::Base
  attr_accessible :sid, :group_id

  belongs_to :group


end

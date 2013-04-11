class StudentId < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :group

end

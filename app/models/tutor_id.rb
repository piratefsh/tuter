class TutorId < ActiveRecord::Base
  attr_accessible :tid, :group_id

  belongs_to :group
end

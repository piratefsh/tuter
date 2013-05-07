class TutorId < ActiveRecord::Base
  attr_accessible :tid, :group_id, :tutor_watchlist_id

  belongs_to :group
  belongs_to :tutor_watchlist

end

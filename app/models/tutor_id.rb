# == Schema Information
#
# Table name: tutor_ids
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tid        :integer
#  group_id   :integer
#

class TutorId < ActiveRecord::Base
  attr_accessible :tid, :group_id, :tutor_watchlist_id

  belongs_to :group
  belongs_to :tutor_watchlist

end

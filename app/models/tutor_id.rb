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
  attr_accessible :tid, :group_id

  belongs_to :group
end

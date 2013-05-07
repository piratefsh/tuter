class TutorWatchlist < ActiveRecord::Base
  attr_accessible :tutor_ids, :tutor_ids_attributes, :user_id, :user, :id

  belongs_to :user
  has_many :tutor_ids

  accepts_nested_attributes_for :tutor_ids

  def add_tutor_id(tutor_id)
    self.tutor_ids << tutor_id
  end
end

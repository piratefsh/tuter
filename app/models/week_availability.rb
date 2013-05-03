class WeekAvailability < ActiveRecord::Base
  attr_accessible :reference, :avail_type, :day_availabilities, :day_availability_attributes, :user_id

  has_many :day_availabilities
  has_one :user
  accepts_nested_attributes_for :day_availabilities, :allow_destroy => :true
  def self.avail_types
    ['Student', 'Tutor']
  end
end

class WeekAvailability < ActiveRecord::Base
  attr_accessible :reference, :avail_type, :day_availabilities, :day_availability_attributes

  has_many :day_availabilities
  accepts_nested_attributes_for :day_availabilities, :allow_destroy => :true
  def self.avail_types
    ['Student', 'Tutor']
  end
end

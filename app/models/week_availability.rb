class WeekAvailability < ActiveRecord::Base
  attr_accessible :reference, :avail_type

  has_many :day_availabilities

  def self.avail_types
    ['Student', 'Tutor']
  end
end

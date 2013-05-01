class DayAvailability < ActiveRecord::Base
  attr_accessible :day, :end_time, :reference, :start_time

  belongs_to :week_availability
end

class DayAvailability < ActiveRecord::Base
  attr_accessible :day, :end_time, :reference, :start_time

  belongs_to :week_availability

  def self.days
    Date::DAYNAMES.zip((0..6).to_a)
  end

  def self.time_format
    format = "%I:%M %p"
  end

end

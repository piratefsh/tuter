# == Schema Information
#
# Table name: day_availabilities
#
#  id                   :integer          not null, primary key
#  day                  :string(255)
#  start_time           :time
#  end_time             :time
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  week_availability_id :integer
#  busy                 :boolean
#

class DayAvailability < ActiveRecord::Base
  attr_accessible :day, :end_time, :reference, :start_time, :busy

  belongs_to :week_availability

  def self.days
    Date::DAYNAMES.zip((0..6).to_a)
  end

  def self.time_format
    format = "%H:%M %p"
  end

end

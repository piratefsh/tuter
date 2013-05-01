# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :string(255)
#  longitude  :float
#  latitude   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  test "create_location" do
    location = Location.new    
    location.name = 'Union South'    
    location.address = 'Union South Madison'
    location.geocode?    
    location.gmaps4rails_address
    location.gmaps4rails_infowindow 
  end
end

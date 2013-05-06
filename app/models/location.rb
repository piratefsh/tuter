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

class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name, :user_id
  
  acts_as_gmappable :latitude => 'latitude', :longitude => 'longitude',
  :process_geocoding => :geocode?, :address => 'address', :normalized_address => 'address',
  :msg => 'Sorry, not even Google could figure out where that is'  
  
  validates :user_id, :uniqueness => {:message => " has already set location, to update your location, please change from your profile."}

  def geocode?
    (!address.blank? && (latitude.blank? || longitude.blank?)) || address_changed?
  end

  def gmaps4rails_address    
    address
  end

  def gmaps4rails_infowindow    
    '<h4>#{name}</h4>' << '<h4>#{address}</h4>'
  end
end

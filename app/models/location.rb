# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  address     :string(255)
#  longitude   :float
#  latitude    :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_ID :string(255)
#  user_id     :integer
#

class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name, :user_id
  # belongs_to :user, :inverse_of => :location
  # validates_presence_of :user
  
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
    user = User.find(self.user_id)
    user.full_name
  end

  def self.json_attributes
    [:address, :latitude, :longitude, :name]
  end

  def to_h
    hash = Hash.new
    Location.json_attributes.each do |a|
      hash[a] = self[a]
    end
    hash
  end
end

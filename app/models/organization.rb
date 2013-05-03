class Organization < ActiveRecord::Base
  attr_accessible :desc, :id, :name, :location, :user_id
  belongs_to :user
  has_one :location
  has_many :programs

  validates :name, :presence => true
end

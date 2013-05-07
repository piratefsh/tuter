class Organization < ActiveRecord::Base
  attr_accessible :website, :about, :desc, :id, :name, :location, :user_id, :email
  belongs_to :user
  has_one :location
  has_many :programs

  validates :name, :presence => true
end

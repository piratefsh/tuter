# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string(255)
#  last_name              :string(255)
#  desc                   :text
#  uid                    :integer
#  provider               :string(255)
#  oauth_token            :string(255)
#  oauth_expires_at       :datetime
#  photo                  :string(255)
#  fb_profile             :string(255)
#  roles_mask             :integer
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, 
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable,
         :recoverable, :rememberable, :trackable, :omniauthable,
         :confirmable

  has_one :location
  has_many :courses

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :photo, 
                  :first_name, :last_name, :desc, :provider, :uid, :roles, :location, :location_attributes,
                  :age, :transportation, :year, :courses, :courses_attributes, :rate

  # Setup creation validation
  # Devise's default => :email and :password must be present 
  validates :first_name, :last_name, :presence => true

  # define user roles and association
  ROLES = %w[student tutor org]
  has_and_belongs_to_many :roles

  accepts_nested_attributes_for :location, :courses

  def with_location
    self.location.build
    self
  end
  def with_course
    self.courses.build
    self
  end

  def initRates (rates)
    start_rate  = 0
    end_rate    = 100
    interval    = 10
    i = start_rate

    until end_rate < i
        rates.push("$#{i} - $#{i + interval}")
        i += interval
    end
    rates
  end

  def self.from_omniauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
  		user.provider = auth.provider
  		user.uid = auth.uid
  		user.email = auth.info.email
  		user.first_name = auth.info.first_name
  		user.last_name = auth.info.last_name
      user.photo = auth.info.image
      user.fb_profile = auth.info.urls.Facebook
  		user.oauth_token = auth.credentials.token 
  		user.oauth_expires_at  = Time.at(auth.credentials.expires_at) 
  		user.save!
  	end	
  end 

  def password_required?
    super && provider.blank?
  end

  # update user attributes - handles omniauth users without passwords, as well as devise users with passwords
  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes!(params, *options)
    else
      super
    end
  end

  # check if user has a given role
  def role?(role)
    roles.include? role.to_s
  end

  # return list of symbols that represent user roles
  def role_symbols
    roles.map do |role|
      role.name.to_sym
    end
  end

  # define user bitmask to represent which roles the user has
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask || 0) & 2**ROLES.index(r)).zero?
    end
  end
end

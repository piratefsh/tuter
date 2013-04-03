class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable,
         :recoverable, :rememberable, :trackable, :omniauthable

  has_one :student_role
  has_one :tutor_role
  has_one :organization_role

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
                  :first_name, :last_name, :desc, :provider, :uid

  # Setup creation validation
  validates :first_name, :last_name, :email, :presence => true


  def self.from_omniauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
  		user.provider = auth.provider
  		user.uid = auth.uid
  		user.email = auth.info.email
  		user.first_name = auth.info.first_name
  		user.last_name = auth.info.last_name
  		user.oauth_token = auth.credentials.token 
  		user.oauth_expires_at  = Time.at(auth.credentials.expires_at) 	
  		user.save!
  	end	
  end 

  def password_required?
    super && provider.blank?
  end

end

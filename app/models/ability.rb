class Ability < ActiveRecord::Base
  # attr_accessible :title, :body

  include CanCan::Ability

  def initialize(user)

  	if user && user.role?(:student)
  		can :manage, :all
  	elsif user && user.role?(:tutor)
  		can :manage, :all
  	elsif user && user.role?(:org)
  		can :manage, :all
  	else
  		cannot :manage, :all
  	end


  end

end

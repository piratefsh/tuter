# == Schema Information
#
# Table name: abilities
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ability < ActiveRecord::Base
  # attr_accessible :title, :body

  include CanCan::Ability

  def initialize(user)

    # define permissions for each type of role
    # currently no restrictions - PERMISSIONS WILL BE UPDATED IN ITERATION 3
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

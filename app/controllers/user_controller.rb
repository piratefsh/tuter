class UserController < ApplicationController
  def user
  end

  def student
  	@user = User.new

  	@user.ROLES << :student

 	redirect_to new_user_registration_path(@user)
  end

  def tutor
  end

  def org
  end

end
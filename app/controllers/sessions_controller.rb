class SessionsController < ApplicationController

	def create
	  puts '==================SessionsController#create=================='
		user = User.from_omniauth(request.env["omniauth.auth"]) 
		sign_in(:user, user)
		session[:user_id] = user.id
		current_user = user
		redirect_to root_url
	end

	def destroy
	  puts '==================SessionsController#destroy=================='
		session[:user_id] = nil
		redirect_to root_url
	end
end





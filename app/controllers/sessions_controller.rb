class SessionsController < ApplicationController

	def create
		@user = User.from_omniauth(request.env["omniauth.auth"]) 		
		session[:user_id] = @user.id
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
		current_user = @user
		redirect_to root_url
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end
end





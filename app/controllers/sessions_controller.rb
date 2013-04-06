class SessionsController < ApplicationController

	def create
		@user = User.from_omniauth(request.env["omniauth.auth"]) 
		sign_in_and_redirect(@user)
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end
end





class SessionsController < ApplicationController
	def create
		user = User.new.from_omniauth(request.env["omniauth.auth"]) 
		sessions[:user_id] = user.uid
		redirect_to root_url #, :notice => "Signed In!"
	end

	def destroy
		session[:user_id] = nil
		session.destroy
		redirect_to root_url
	end
end





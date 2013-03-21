class ApplicationController < ActionController::Base
  protect_from_forgery
  #before_filter :authenticate_user!
  helper_method :current_user

  def index
  end	 

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end

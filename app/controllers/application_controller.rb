class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # helper_method :current_user
  #before_filter :authenticate_user!, :except => :index

  def index
  end	

  # handle error for user action for which he/she does not have permission (as defined is ability.rb)
  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = exception.message
  	redirect_to root_url
  end 

end

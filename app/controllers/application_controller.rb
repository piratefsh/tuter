class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # helper_method :current_user
  #before_filter :authenticate_user!, :except => :index

  def index
  end	

  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = exception.message
  	redirect_to root_url
  end 

end

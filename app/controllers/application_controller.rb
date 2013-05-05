class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_user_time_zone
  # helper_method :current_user
  #before_filter :authenticate_user!, :except => :index

  def index
  end	

  #set current time zone for schedules
  def set_user_time_zone
    Time.zone = current_user.time_zone unless current_user.nil?
  end

  # handle error for user action for which he/she does not have permission (as defined is ability.rb)
  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = exception.message
  	redirect_to root_url
  end 

end

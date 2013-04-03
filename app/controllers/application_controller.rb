class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user! , :only => :create
  helper_method :current_user

  def index
    puts '==================ApplicationController#index=================='
  end	 

  def current_user
    puts '==================ApplicationController#current_user=================='
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]  	
  end
end

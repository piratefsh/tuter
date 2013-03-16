class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]

  helper_method :current_user

  def index
  	@users = User.find(params[:uid])
  end

  def current_user
  	@current_user ||= User.find(sessions[:user_id]) if session[:user_id]
  end
  	
  
end

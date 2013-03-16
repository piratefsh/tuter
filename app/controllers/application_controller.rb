class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  def index
    @user = User.find(params[:uid])
  end	

  def user_signed_in
    if current_user?
    end 
  end  

  private

  def current_user
  	@current_user ||= User.find(sessions[:user_id]) if session[:user_id]
  end
  	
  helper_method :current_user
  
end

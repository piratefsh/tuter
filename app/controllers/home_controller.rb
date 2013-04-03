class HomeController < ApplicationController
  # helper_method :current_user

  def index
    puts '==================HomeController#index=================='
  end

  # def current_user
    # puts '==================HomeController#current_user=================='
  	# @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end  
end

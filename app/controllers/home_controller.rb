class HomeController < ApplicationController
  helper_method :current_user
  def index
    @locations = Location.all
    @json = Location.all.to_gmaps4rails
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locations }
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end

class HomeController < ApplicationController
  helper_method :search_tutors
  def index
    @locations = Location.all
    @json = Location.all.to_gmaps4rails
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locations }
    end
  end
 
  def search_tutors
    respond_to do |format|
        format.html {redirect_to search_index_path}
    end
  end

  
end

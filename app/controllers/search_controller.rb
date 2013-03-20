class SearchController < ApplicationController
  def index
	@users = User.all

  	respond_to do |format|
  		format.html #search/index/html.erb
  	end
  end
end

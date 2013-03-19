class SearchController < ApplicationController
  def index
  	respond_to do |format|
  		format.html #search/index/html.erb
  	end
  end
end

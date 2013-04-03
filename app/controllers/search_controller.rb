class SearchController < ApplicationController
  def index
    puts '==================SearchController=================='
    @users = User.all
    @rates = Array.new

    start_rate  = 0
    end_rate    = 100
    interval    = 10
    i = start_rate


    until end_rate < i
        @rates.push("$#{i} - $#{i + interval}")
        i += interval
    end

    respond_to do |format|
        format.html #search/index/html.erb
  	end
  end
end

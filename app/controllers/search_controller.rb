class SearchController < ApplicationController

  helper_method :randomCourse, :randomLocation, :randomRate


  def index
    @rates = Array.new
    @tutors = User.all.role? :tutor

    initRates(@rates)

    respond_to do |format|
        format.html #search/index/html.erb
        # format.json {render :json => @tutors(:only => [:first_name, :last_name, :email]) }

    end
  end

  def initRates (rates)
    start_rate  = 0
    end_rate    = 100
    interval    = 10
    i = start_rate

    until end_rate < i
        rates.push("$#{i} - $#{i + interval}")
        i += interval
    end

    rates
  end

  #generates random values for development purposes
  def randomCourse
    courses = ['CS 302', 'MAT 211', 'PHY 102', 'PHI 101']
    courses[Random.rand(courses.size)]
  end

  def randomLocation
    loc = ['Helen C White', 'Steenbock Library', 'Memorial Library', 'SAC']
    loc[Random.rand(loc.size)]
  end

  def randomRate rates
    rates[Random.rand(rates.size)]
  end
end

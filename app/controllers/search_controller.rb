class SearchController < ApplicationController

  helper_method :randomCourse, :randomLocation, :get_types


  def index
    @rates = Array.new
    @tutors = Array.new

    @courses = Hash.new

    @users = User.all

    @users.each do |u|
      if u.role? :tutor 
        @tutors.push(u)
      end
    end

    init_rates(@rates)

    respond_to do |format|
        format.html #search/index/html.erb
        # format.json {render :json => @tutors(:only => [:first_name, :last_name, :email]) }
    end
  end

  #get types of groups that tutor has
  def get_types(u)
    types = Array.new

    get_users_groups(u).each do |g|
      types << g.group_type
    end

    types
  end

  def get_users_groups(u)
    groups = Array.new

    Group.all.select do |group|
      group.tutor_ids.all.each do |tutor|
        if u.id == tutor.tid
          groups << group
        end
      end
    end
      groups
  end
  
  def init_rates (rates)
    start_rate  = 0
    end_rate    = 100
    interval    = 10
    i = start_rate

    rates << ""
    
    until end_rate < i
        rates << "$#{i} - $#{i + interval}"
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
end

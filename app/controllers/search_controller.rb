class SearchController < ApplicationController

  helper_method :randomCourse, :randomLocation


  def index
    @rates = Array.new
    @tutors = Array.new

    @courses = Hash.new

    @users = User.all

    @users.each do |u|
      if u.role? :tutor 
        @tutors.push(u)
        @courses[u.id] = Array.new
        # add courses that tutor has 
        Group.all.select do |group|
              group.tutor_ids.all.each do |tutor|
                  if u.id == tutor.tid
                      course = group.course
                      if course 
                        @courses[u.id] << course.name
                      end
                  end
              end
          end
      end
    end

    respond_to do |format|
        format.html #search/index/html.erb
        # format.json {render :json => @tutors(:only => [:first_name, :last_name, :email]) }

    end
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

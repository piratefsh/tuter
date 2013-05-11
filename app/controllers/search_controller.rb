class SearchController < ApplicationController

  helper_method :randomLocation, :get_types


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
    respond_to do |format|
        format.html #search/index/html.erb
        format.json {render :json => @tutors.to_json}
    end
  end

  #get types of groups that tutor has
  def get_types(u)
    types = Array.new

    get_users_groups(u).each do |g|
      if not types.include?(g.group_type)
        types << g.group_type
      end
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
  
  def randomLocation
    loc = ['Helen C White', 'Steenbock Library', 'Memorial Library', 'SAC']
    loc[Random.rand(loc.size)]
  end
end

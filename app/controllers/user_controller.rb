class UserController < ApplicationController
  helper_method :user_average_rating
  def show
    @user = User.find(params[:id])
    @user_location = Location.where(:user_id => @user.id).first
    @users_groups = Array.new

    #select user's groups
    Group.all.select do |group|
      #groups that user is a tutor for
      group.tutor_ids.all.each do |tutor|
          if @user.id == tutor.tid
              @users_groups << group
          end
      end
    end
    @review = Review.new

    @reviews= Review.where(:user_id => @user.id)

    respond_to do |format|
        format.html
        format.json {render :json => groups_as_json(@user, @users_groups)}#:json => @user.to_json(:method => groups_as_json(@users_groups), :only => User.json_attributes)}
    end
  end

  def groups_as_json (user, users_groups)

    json = user.to_h

    groups_json = users_groups.collect do |group|
      {
        :name   => group.name,
        :id     => group.id
        :desc   => group.desc,
        :course => 
          {
            :course_name => group.course.name,
            :course_code => group.course.course_code
          }
      }
    end

    json.merge :groups => groups_json

  end

  def user_average_rating
    total_stars = 0

    @reviews.each do |r|
      total_stars += r.rating
    end

    average_rating = total_stars / @reviews.size
  end
end
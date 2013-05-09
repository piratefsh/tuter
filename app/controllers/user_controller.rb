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

    @reviews= Review.where("user_id =?", @user.id)

    respond_to do |format|
        format.html
        format.json {render :json => @user.to_json(:only => User.json_attributes)}
    end
  end

  def user_average_rating
    total_stars = 0

    @reviews.each do |r|
      total_stars += r.rating
    end

    average_rating = total_stars / @reviews.size
  end
end
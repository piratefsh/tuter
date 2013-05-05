class UserController < ApplicationController
  helper_method :user_average_rating
  def show
    @user = User.find(params[:id])
    @review = Review.new

    @reviews= Review.where("user_id =?", @user.id)

    respond_to do |format|
        format.html
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
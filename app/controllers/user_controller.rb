class UserController < ApplicationController

  def show
    @user = User.find(params[:id])
    @review = Review.new
    @reviews= Review.where("user_id =?", @user.id)

    respond_to do |format|
        format.html
    end
  end

  def user_reviews
  end
    
end
require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  # setup do
    # @review = reviews(:one)
  # end

  test "index" do    
    visit '/reviews/'
    assert_routing '/reviews', { :controller => "reviews", :action => "index"} 
    # assert find_link 'Home'
    # assert find_link 'Find a Tutor'
    # assert find_link 'Tutoring Organizations'
  end

  # test "should get new" do
    # get :new
    # assert_response :success
  # end
# 
  # test "should create review" do
    # assert_difference('Review.count') do
      # post :create, review: { content: @review.content, rating: @review.rating, recommend: @review.recommend, reviewer_id: @review.reviewer_id, title: @review.title, user_id: @review.user_id }
    # end
# 
    # assert_redirected_to review_path(assigns(:review))
  # end
# 
  # test "should show review" do
    # get :show, id: @review
    # assert_response :success
  # end
# 
  # test "should get edit" do
    # get :edit, id: @review
    # assert_response :success
  # end
# 
  # test "should update review" do
    # put :update, id: @review, review: { content: @review.content, rating: @review.rating, recommend: @review.recommend, reviewer_id: @review.reviewer_id, title: @review.title, user_id: @review.user_id }
    # assert_redirected_to review_path(assigns(:review))
  # end
# 
  # test "should destroy review" do
    # assert_difference('Review.count', -1) do
      # delete :destroy, id: @review
    # end
# 
    # assert_redirected_to reviews_path
  # end
end

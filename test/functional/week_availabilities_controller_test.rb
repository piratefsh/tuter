require 'test_helper'

class WeekAvailabilitiesControllerTest < ActionController::TestCase
  # setup do
    # @week_availability = week_availabilities(:one)
  # end

  test "index" do    
    visit '/week_availabilities/'
    assert_routing '/week_availabilities', { :controller => "week_availabilities", :action => "index"} 
    # assert find_link 'Home'
    # assert find_link 'Find a Tutor'
    # assert find_link 'Tutoring Organizations'
  end

  # test "should get new" do
    # get :new
    # assert_response :success
  # end
# 
  # test "should create week_availability" do
    # assert_difference('WeekAvailability.count') do
      # post :create, week_availability: {  }
    # end
# 
    # assert_redirected_to week_availability_path(assigns(:week_availability))
  # end
# 
  # test "should show week_availability" do
    # get :show, id: @week_availability
    # assert_response :success
  # end
# 
  # test "should get edit" do
    # get :edit, id: @week_availability
    # assert_response :success
  # end
# 
  # test "should update week_availability" do
    # put :update, id: @week_availability, week_availability: {  }
    # assert_redirected_to week_availability_path(assigns(:week_availability))
  # end
# 
  # test "should destroy week_availability" do
    # assert_difference('WeekAvailability.count', -1) do
      # delete :destroy, id: @week_availability
    # end
# 
    # assert_redirected_to week_availabilities_path
  # end
end

require 'test_helper'

class DayAvailabilitiesControllerTest < ActionController::TestCase
  # setup do
    # @day_availability = day_availabilities(:one)
  # end

  test "index" do    
    visit '/day_availabilities/'
    assert_routing '/day_availabilities', { :controller => "day_availabilities", :action => "index"} 
    # assert find_link 'Home'
    # assert find_link 'Find a Tutor'
    # assert find_link 'Tutoring Organizations'
  end

  # test "should get new" do
    # get :new
    # assert_response :success
  # end
# 
  # test "should create day_availability" do
    # assert_difference('DayAvailability.count') do
      # post :create, day_availability: {  }
    # end
# 
    # assert_redirected_to day_availability_path(assigns(:day_availability))
  # end
# 
  # test "should show day_availability" do
    # get :show, id: @day_availability
    # assert_response :success
  # end
# 
  # test "should get edit" do
    # get :edit, id: @day_availability
    # assert_response :success
  # end
# 
  # test "should update day_availability" do
    # put :update, id: @day_availability, day_availability: {  }
    # assert_redirected_to day_availability_path(assigns(:day_availability))
  # end
# 
  # test "should destroy day_availability" do
    # assert_difference('DayAvailability.count', -1) do
      # delete :destroy, id: @day_availability
    # end
# 
    # assert_redirected_to day_availabilities_path
  # end
end

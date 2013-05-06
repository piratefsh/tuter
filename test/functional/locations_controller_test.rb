require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  # setup do
    # @location = locations(:one)
  # end

  test "index" do    
    visit '/locations/'
    assert_routing '/locations', { :controller => "locations", :action => "index"} 
    # assert find_link 'Home'
    # assert find_link 'Find a Tutor'
    # assert find_link 'Tutoring Organizations'
  end

  # test "should get new" do
    # get :new
    # assert_response :success
  # end
# 
  # test "should create location" do
    # assert_difference('Location.count') do
      # post :create, location: {  }
    # end
# 
    # assert_redirected_to location_path(assigns(:location))
  # end
# 
  # test "should show location" do
    # get :show, id: @location
    # assert_response :success
  # end
# 
  # test "should get edit" do
    # get :edit, id: @location
    # assert_response :success
  # end
# 
  # test "should update location" do
    # put :update, id: @location, location: {  }
    # assert_redirected_to location_path(assigns(:location))
  # end
# 
  # test "should destroy location" do
    # assert_difference('Location.count', -1) do
      # delete :destroy, id: @location
    # end
# 
    # assert_redirected_to locations_path
  # end
end

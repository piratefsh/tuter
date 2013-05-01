require 'test_helper'

class WeekAvailabilitiesControllerTest < ActionController::TestCase
  setup do
    @week_availability = week_availabilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:week_availabilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create week_availability" do
    assert_difference('WeekAvailability.count') do
      post :create, week_availability: {  }
    end

    assert_redirected_to week_availability_path(assigns(:week_availability))
  end

  test "should show week_availability" do
    get :show, id: @week_availability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @week_availability
    assert_response :success
  end

  test "should update week_availability" do
    put :update, id: @week_availability, week_availability: {  }
    assert_redirected_to week_availability_path(assigns(:week_availability))
  end

  test "should destroy week_availability" do
    assert_difference('WeekAvailability.count', -1) do
      delete :destroy, id: @week_availability
    end

    assert_redirected_to week_availabilities_path
  end
end

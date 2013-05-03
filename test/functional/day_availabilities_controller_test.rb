require 'test_helper'

class DayAvailabilitiesControllerTest < ActionController::TestCase
  setup do
    @day_availability = day_availabilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:day_availabilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create day_availability" do
    assert_difference('DayAvailability.count') do
      post :create, day_availability: {  }
    end

    assert_redirected_to day_availability_path(assigns(:day_availability))
  end

  test "should show day_availability" do
    get :show, id: @day_availability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @day_availability
    assert_response :success
  end

  test "should update day_availability" do
    put :update, id: @day_availability, day_availability: {  }
    assert_redirected_to day_availability_path(assigns(:day_availability))
  end

  test "should destroy day_availability" do
    assert_difference('DayAvailability.count', -1) do
      delete :destroy, id: @day_availability
    end

    assert_redirected_to day_availabilities_path
  end
end

require 'test_helper'

class WorkdaysControllerTest < ActionController::TestCase
  setup do
    @workday = workdays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workdays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workday" do
    assert_difference('Workday.count') do
      post :create, :workday => @workday.attributes
    end

    assert_redirected_to workday_path(assigns(:workday))
  end

  test "should show workday" do
    get :show, :id => @workday.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @workday.to_param
    assert_response :success
  end

  test "should update workday" do
    put :update, :id => @workday.to_param, :workday => @workday.attributes
    assert_redirected_to workday_path(assigns(:workday))
  end

  test "should destroy workday" do
    assert_difference('Workday.count', -1) do
      delete :destroy, :id => @workday.to_param
    end

    assert_redirected_to workdays_path
  end
end

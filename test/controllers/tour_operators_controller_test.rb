require 'test_helper'

class TourOperatorsControllerTest < ActionController::TestCase
  setup do
    @tour_operator = tour_operators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tour_operators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour_operator" do
    assert_difference('TourOperator.count') do
      post :create, tour_operator: { name: @tour_operator.name, url: @tour_operator.url }
    end

    assert_redirected_to tour_operator_path(assigns(:tour_operator))
  end

  test "should show tour_operator" do
    get :show, id: @tour_operator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour_operator
    assert_response :success
  end

  test "should update tour_operator" do
    patch :update, id: @tour_operator, tour_operator: { name: @tour_operator.name, url: @tour_operator.url }
    assert_redirected_to tour_operator_path(assigns(:tour_operator))
  end

  test "should destroy tour_operator" do
    assert_difference('TourOperator.count', -1) do
      delete :destroy, id: @tour_operator
    end

    assert_redirected_to tour_operators_path
  end
end

require 'test_helper'

class TravelDetailsControllerTest < ActionController::TestCase
  setup do
    @travel_detail = travel_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_detail" do
    assert_difference('TravelDetail.count') do
      post :create, travel_detail: { desc: @travel_detail.desc, name: @travel_detail.name }
    end

    assert_redirected_to travel_detail_path(assigns(:travel_detail))
  end

  test "should show travel_detail" do
    get :show, id: @travel_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_detail
    assert_response :success
  end

  test "should update travel_detail" do
    patch :update, id: @travel_detail, travel_detail: { desc: @travel_detail.desc, name: @travel_detail.name }
    assert_redirected_to travel_detail_path(assigns(:travel_detail))
  end

  test "should destroy travel_detail" do
    assert_difference('TravelDetail.count', -1) do
      delete :destroy, id: @travel_detail
    end

    assert_redirected_to travel_details_path
  end
end

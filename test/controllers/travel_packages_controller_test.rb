require 'test_helper'

class TravelPackagesControllerTest < ActionController::TestCase
  setup do
    @travel_package = travel_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_package" do
    assert_difference('TravelPackage.count') do
      post :create, travel_package: { airfare: @travel_package.airfare, guide_id: @travel_package.guide_id, hotel_id: @travel_package.hotel_id, local_transpotation_id: @travel_package.local_transpotation_id, name: @travel_package.name, travel_detail_id: @travel_package.travel_detail_id }
    end

    assert_redirected_to travel_package_path(assigns(:travel_package))
  end

  test "should show travel_package" do
    get :show, id: @travel_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_package
    assert_response :success
  end

  test "should update travel_package" do
    patch :update, id: @travel_package, travel_package: { airfare: @travel_package.airfare, guide_id: @travel_package.guide_id, hotel_id: @travel_package.hotel_id, local_transpotation_id: @travel_package.local_transpotation_id, name: @travel_package.name, travel_detail_id: @travel_package.travel_detail_id }
    assert_redirected_to travel_package_path(assigns(:travel_package))
  end

  test "should destroy travel_package" do
    assert_difference('TravelPackage.count', -1) do
      delete :destroy, id: @travel_package
    end

    assert_redirected_to travel_packages_path
  end
end

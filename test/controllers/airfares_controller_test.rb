require 'test_helper'

class AirfaresControllerTest < ActionController::TestCase
  setup do
    @airfare = airfares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airfares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airfare" do
    assert_difference('Airfare.count') do
      post :create, airfare: { name: @airfare.name, price: @airfare.price, rank: @airfare.rank }
    end

    assert_redirected_to airfare_path(assigns(:airfare))
  end

  test "should show airfare" do
    get :show, id: @airfare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airfare
    assert_response :success
  end

  test "should update airfare" do
    patch :update, id: @airfare, airfare: { name: @airfare.name, price: @airfare.price, rank: @airfare.rank }
    assert_redirected_to airfare_path(assigns(:airfare))
  end

  test "should destroy airfare" do
    assert_difference('Airfare.count', -1) do
      delete :destroy, id: @airfare
    end

    assert_redirected_to airfares_path
  end
end

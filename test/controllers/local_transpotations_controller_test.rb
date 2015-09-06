require 'test_helper'

class LocalTranspotationsControllerTest < ActionController::TestCase
  setup do
    @local_transpotation = local_transpotations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:local_transpotations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local_transpotation" do
    assert_difference('LocalTranspotation.count') do
      post :create, local_transpotation: { name: @local_transpotation.name, price: @local_transpotation.price, rank: @local_transpotation.rank }
    end

    assert_redirected_to local_transpotation_path(assigns(:local_transpotation))
  end

  test "should show local_transpotation" do
    get :show, id: @local_transpotation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local_transpotation
    assert_response :success
  end

  test "should update local_transpotation" do
    patch :update, id: @local_transpotation, local_transpotation: { name: @local_transpotation.name, price: @local_transpotation.price, rank: @local_transpotation.rank }
    assert_redirected_to local_transpotation_path(assigns(:local_transpotation))
  end

  test "should destroy local_transpotation" do
    assert_difference('LocalTranspotation.count', -1) do
      delete :destroy, id: @local_transpotation
    end

    assert_redirected_to local_transpotations_path
  end
end

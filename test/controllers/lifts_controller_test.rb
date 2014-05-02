require 'test_helper'

class LiftsControllerTest < ActionController::TestCase
  setup do
    @lift = lifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lifts)
  end

  test "should create lift" do
    assert_difference('Lift.count') do
      post :create, lift: { name: @lift.name, result_id: @lift.result_id }
    end

    assert_response 201
  end

  test "should show lift" do
    get :show, id: @lift
    assert_response :success
  end

  test "should update lift" do
    put :update, id: @lift, lift: { name: @lift.name, result_id: @lift.result_id }
    assert_response 204
  end

  test "should destroy lift" do
    assert_difference('Lift.count', -1) do
      delete :destroy, id: @lift
    end

    assert_response 204
  end
end

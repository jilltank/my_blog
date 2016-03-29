require 'test_helper'

class GsControllerTest < ActionController::TestCase
  setup do
    @g = gs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gs)
  end

  test "should create g" do
    assert_difference('G.count') do
      post :create, g: { auth_token: @g.auth_token, email: @g.email, password: @g.password, user: @g.user }
    end

    assert_response 201
  end

  test "should show g" do
    get :show, id: @g
    assert_response :success
  end

  test "should update g" do
    put :update, id: @g, g: { auth_token: @g.auth_token, email: @g.email, password: @g.password, user: @g.user }
    assert_response 204
  end

  test "should destroy g" do
    assert_difference('G.count', -1) do
      delete :destroy, id: @g
    end

    assert_response 204
  end
end

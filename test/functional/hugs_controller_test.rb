require 'test_helper'

class HugsControllerTest < ActionController::TestCase
  setup do
    @hug = hugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hug" do
    assert_difference('Hug.count') do
      post :create, hug: {  }
    end

    assert_redirected_to hug_path(assigns(:hug))
  end

  test "should show hug" do
    get :show, id: @hug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hug
    assert_response :success
  end

  test "should update hug" do
    put :update, id: @hug, hug: {  }
    assert_redirected_to hug_path(assigns(:hug))
  end

  test "should destroy hug" do
    assert_difference('Hug.count', -1) do
      delete :destroy, id: @hug
    end

    assert_redirected_to hugs_path
  end
end

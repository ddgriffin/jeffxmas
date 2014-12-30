require 'test_helper'

class DistractionsControllerTest < ActionController::TestCase
  setup do
    @distraction = distractions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distraction" do
    assert_difference('Distraction.count') do
      post :create, distraction: { description: @distraction.description, link: @distraction.link }
    end

    assert_redirected_to distraction_path(assigns(:distraction))
  end

  test "should show distraction" do
    get :show, id: @distraction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distraction
    assert_response :success
  end

  test "should update distraction" do
    put :update, id: @distraction, distraction: { description: @distraction.description, link: @distraction.link }
    assert_redirected_to distraction_path(assigns(:distraction))
  end

  test "should destroy distraction" do
    assert_difference('Distraction.count', -1) do
      delete :destroy, id: @distraction
    end

    assert_redirected_to distractions_path
  end
end

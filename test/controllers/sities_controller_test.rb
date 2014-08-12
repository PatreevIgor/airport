require 'test_helper'

class SitiesControllerTest < ActionController::TestCase
  setup do
    @sity = sities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sity" do
    assert_difference('Sity.count') do
      post :create, sity: { name: @sity.name, x: @sity.x, y: @sity.y }
    end

    assert_redirected_to sity_path(assigns(:sity))
  end

  test "should show sity" do
    get :show, id: @sity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sity
    assert_response :success
  end

  test "should update sity" do
    patch :update, id: @sity, sity: { name: @sity.name, x: @sity.x, y: @sity.y }
    assert_redirected_to sity_path(assigns(:sity))
  end

  test "should destroy sity" do
    assert_difference('Sity.count', -1) do
      delete :destroy, id: @sity
    end

    assert_redirected_to sities_path
  end
end

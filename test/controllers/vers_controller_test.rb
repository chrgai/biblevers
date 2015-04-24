require 'test_helper'

class VersControllerTest < ActionController::TestCase
  setup do
    @ver = vers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ver" do
    assert_difference('Ver.count') do
      post :create, ver: { chapter: @ver.chapter, test: @ver.test }
    end

    assert_redirected_to ver_path(assigns(:ver))
  end

  test "should show ver" do
    get :show, id: @ver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ver
    assert_response :success
  end

  test "should update ver" do
    patch :update, id: @ver, ver: { chapter: @ver.chapter, test: @ver.test }
    assert_redirected_to ver_path(assigns(:ver))
  end

  test "should destroy ver" do
    assert_difference('Ver.count', -1) do
      delete :destroy, id: @ver
    end

    assert_redirected_to vers_path
  end
end

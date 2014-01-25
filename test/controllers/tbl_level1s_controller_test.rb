require 'test_helper'

class TblLevel1sControllerTest < ActionController::TestCase
  setup do
    @tbl_level1 = tbl_level1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tbl_level1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tbl_level1" do
    assert_difference('TblLevel1.count') do
      post :create, tbl_level1: { continent: @tbl_level1.continent, description: @tbl_level1.description }
    end

    assert_redirected_to tbl_level1_path(assigns(:tbl_level1))
  end

  test "should show tbl_level1" do
    get :show, id: @tbl_level1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tbl_level1
    assert_response :success
  end

  test "should update tbl_level1" do
    patch :update, id: @tbl_level1, tbl_level1: { continent: @tbl_level1.continent, description: @tbl_level1.description }
    assert_redirected_to tbl_level1_path(assigns(:tbl_level1))
  end

  test "should destroy tbl_level1" do
    assert_difference('TblLevel1.count', -1) do
      delete :destroy, id: @tbl_level1
    end

    assert_redirected_to tbl_level1s_path
  end
end

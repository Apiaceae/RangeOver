require 'test_helper'

class TdwgLevelOnesControllerTest < ActionController::TestCase
  setup do
    @tdwg_level_one = tdwg_level_ones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tdwg_level_ones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tdwg_level_one" do
    assert_difference('TdwgLevelOne.count') do
      post :create, tdwg_level_one: { continent: @tdwg_level_one.continent, description: @tdwg_level_one.description }
    end

    assert_redirected_to tdwg_level_one_path(assigns(:tdwg_level_one))
  end

  test "should show tdwg_level_one" do
    get :show, id: @tdwg_level_one
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tdwg_level_one
    assert_response :success
  end

  test "should update tdwg_level_one" do
    patch :update, id: @tdwg_level_one, tdwg_level_one: { continent: @tdwg_level_one.continent, description: @tdwg_level_one.description }
    assert_redirected_to tdwg_level_one_path(assigns(:tdwg_level_one))
  end

  test "should destroy tdwg_level_one" do
    assert_difference('TdwgLevelOne.count', -1) do
      delete :destroy, id: @tdwg_level_one
    end

    assert_redirected_to tdwg_level_ones_path
  end
end

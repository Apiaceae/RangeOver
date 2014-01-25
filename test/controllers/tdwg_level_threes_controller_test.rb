require 'test_helper'

class TdwgLevelThreesControllerTest < ActionController::TestCase
  setup do
    @tdwg_level_three = tdwg_level_threes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tdwg_level_threes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tdwg_level_three" do
    assert_difference('TdwgLevelThree.count') do
      post :create, tdwg_level_three: { area: @tdwg_level_three.area, code: @tdwg_level_three.code, description: @tdwg_level_three.description, iso_code: @tdwg_level_three.iso_code, tdwg_level_two_id: @tdwg_level_three.tdwg_level_two_id }
    end

    assert_redirected_to tdwg_level_three_path(assigns(:tdwg_level_three))
  end

  test "should show tdwg_level_three" do
    get :show, id: @tdwg_level_three
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tdwg_level_three
    assert_response :success
  end

  test "should update tdwg_level_three" do
    patch :update, id: @tdwg_level_three, tdwg_level_three: { area: @tdwg_level_three.area, code: @tdwg_level_three.code, description: @tdwg_level_three.description, iso_code: @tdwg_level_three.iso_code, tdwg_level_two_id: @tdwg_level_three.tdwg_level_two_id }
    assert_redirected_to tdwg_level_three_path(assigns(:tdwg_level_three))
  end

  test "should destroy tdwg_level_three" do
    assert_difference('TdwgLevelThree.count', -1) do
      delete :destroy, id: @tdwg_level_three
    end

    assert_redirected_to tdwg_level_threes_path
  end
end

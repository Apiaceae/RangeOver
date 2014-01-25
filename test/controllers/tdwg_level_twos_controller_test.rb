require 'test_helper'

class TdwgLevelTwosControllerTest < ActionController::TestCase
  setup do
    @tdwg_level_two = tdwg_level_twos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tdwg_level_twos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tdwg_level_two" do
    assert_difference('TdwgLevelTwo.count') do
      post :create, tdwg_level_two: { description: @tdwg_level_two.description, region: @tdwg_level_two.region, tdwg_level_one_id: @tdwg_level_two.tdwg_level_one_id }
    end

    assert_redirected_to tdwg_level_two_path(assigns(:tdwg_level_two))
  end

  test "should show tdwg_level_two" do
    get :show, id: @tdwg_level_two
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tdwg_level_two
    assert_response :success
  end

  test "should update tdwg_level_two" do
    patch :update, id: @tdwg_level_two, tdwg_level_two: { description: @tdwg_level_two.description, region: @tdwg_level_two.region, tdwg_level_one_id: @tdwg_level_two.tdwg_level_one_id }
    assert_redirected_to tdwg_level_two_path(assigns(:tdwg_level_two))
  end

  test "should destroy tdwg_level_two" do
    assert_difference('TdwgLevelTwo.count', -1) do
      delete :destroy, id: @tdwg_level_two
    end

    assert_redirected_to tdwg_level_twos_path
  end
end

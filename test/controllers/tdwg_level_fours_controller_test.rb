require 'test_helper'

class TdwgLevelFoursControllerTest < ActionController::TestCase
  setup do
    @tdwg_level_four = tdwg_level_fours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tdwg_level_fours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tdwg_level_four" do
    assert_difference('TdwgLevelFour.count') do
      post :create, tdwg_level_four: { code: @tdwg_level_four.code, country: @tdwg_level_four.country, description: @tdwg_level_four.description, iso_code: @tdwg_level_four.iso_code, tdwg_level_three_id: @tdwg_level_four.tdwg_level_three_id }
    end

    assert_redirected_to tdwg_level_four_path(assigns(:tdwg_level_four))
  end

  test "should show tdwg_level_four" do
    get :show, id: @tdwg_level_four
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tdwg_level_four
    assert_response :success
  end

  test "should update tdwg_level_four" do
    patch :update, id: @tdwg_level_four, tdwg_level_four: { code: @tdwg_level_four.code, country: @tdwg_level_four.country, description: @tdwg_level_four.description, iso_code: @tdwg_level_four.iso_code, tdwg_level_three_id: @tdwg_level_four.tdwg_level_three_id }
    assert_redirected_to tdwg_level_four_path(assigns(:tdwg_level_four))
  end

  test "should destroy tdwg_level_four" do
    assert_difference('TdwgLevelFour.count', -1) do
      delete :destroy, id: @tdwg_level_four
    end

    assert_redirected_to tdwg_level_fours_path
  end
end

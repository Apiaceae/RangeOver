require 'test_helper'

class TdwgGazetteersControllerTest < ActionController::TestCase
  setup do
    @tdwg_gazetteer = tdwg_gazetteers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tdwg_gazetteers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tdwg_gazetteer" do
    assert_difference('TdwgGazetteer.count') do
      post :create, tdwg_gazetteer: { description: @tdwg_gazetteer.description, gazetteer: @tdwg_gazetteer.gazetteer, kew_region: @tdwg_gazetteer.kew_region, kew_region_code: @tdwg_gazetteer.kew_region_code, kew_region_subdivison: @tdwg_gazetteer.kew_region_subdivison, synonym: @tdwg_gazetteer.synonym, tdwg_level_four_id: @tdwg_gazetteer.tdwg_level_four_id }
    end

    assert_redirected_to tdwg_gazetteer_path(assigns(:tdwg_gazetteer))
  end

  test "should show tdwg_gazetteer" do
    get :show, id: @tdwg_gazetteer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tdwg_gazetteer
    assert_response :success
  end

  test "should update tdwg_gazetteer" do
    patch :update, id: @tdwg_gazetteer, tdwg_gazetteer: { description: @tdwg_gazetteer.description, gazetteer: @tdwg_gazetteer.gazetteer, kew_region: @tdwg_gazetteer.kew_region, kew_region_code: @tdwg_gazetteer.kew_region_code, kew_region_subdivison: @tdwg_gazetteer.kew_region_subdivison, synonym: @tdwg_gazetteer.synonym, tdwg_level_four_id: @tdwg_gazetteer.tdwg_level_four_id }
    assert_redirected_to tdwg_gazetteer_path(assigns(:tdwg_gazetteer))
  end

  test "should destroy tdwg_gazetteer" do
    assert_difference('TdwgGazetteer.count', -1) do
      delete :destroy, id: @tdwg_gazetteer
    end

    assert_redirected_to tdwg_gazetteers_path
  end
end

require 'test_helper'

class GazetteersControllerTest < ActionController::TestCase
  setup do
    @gazetteer = gazetteers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gazetteers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gazetteer" do
    assert_difference('Gazetteer.count') do
      post :create, gazetteer: { address: @gazetteer.address, gmaps: @gazetteer.gmaps, latitude: @gazetteer.latitude, longitude: @gazetteer.longitude, name: @gazetteer.name }
    end

    assert_redirected_to gazetteer_path(assigns(:gazetteer))
  end

  test "should show gazetteer" do
    get :show, id: @gazetteer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gazetteer
    assert_response :success
  end

  test "should update gazetteer" do
    patch :update, id: @gazetteer, gazetteer: { address: @gazetteer.address, gmaps: @gazetteer.gmaps, latitude: @gazetteer.latitude, longitude: @gazetteer.longitude, name: @gazetteer.name }
    assert_redirected_to gazetteer_path(assigns(:gazetteer))
  end

  test "should destroy gazetteer" do
    assert_difference('Gazetteer.count', -1) do
      delete :destroy, id: @gazetteer
    end

    assert_redirected_to gazetteers_path
  end
end

require 'test_helper'

class FightsControllerTest < ActionController::TestCase
  setup do
    @fight = fights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fight" do
    assert_difference('Fight.count') do
      post :create, fight: { favorite: @fight.favorite, fighter1: @fight.fighter1, fighter2: @fight.fighter2, points: @fight.points }
    end

    assert_redirected_to fight_path(assigns(:fight))
  end

  test "should show fight" do
    get :show, id: @fight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fight
    assert_response :success
  end

  test "should update fight" do
    patch :update, id: @fight, fight: { favorite: @fight.favorite, fighter1: @fight.fighter1, fighter2: @fight.fighter2, points: @fight.points }
    assert_redirected_to fight_path(assigns(:fight))
  end

  test "should destroy fight" do
    assert_difference('Fight.count', -1) do
      delete :destroy, id: @fight
    end

    assert_redirected_to fights_path
  end
end

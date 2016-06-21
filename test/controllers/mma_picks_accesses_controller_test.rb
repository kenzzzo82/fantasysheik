require 'test_helper'

class MmaPicksAccessesControllerTest < ActionController::TestCase
  setup do
    @mma_picks_access = mma_picks_accesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mma_picks_accesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mma_picks_access" do
    assert_difference('MmaPicksAccess.count') do
      post :create, mma_picks_access: {  }
    end

    assert_redirected_to mma_picks_access_path(assigns(:mma_picks_access))
  end

  test "should show mma_picks_access" do
    get :show, id: @mma_picks_access
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mma_picks_access
    assert_response :success
  end

  test "should update mma_picks_access" do
    patch :update, id: @mma_picks_access, mma_picks_access: {  }
    assert_redirected_to mma_picks_access_path(assigns(:mma_picks_access))
  end

  test "should destroy mma_picks_access" do
    assert_difference('MmaPicksAccess.count', -1) do
      delete :destroy, id: @mma_picks_access
    end

    assert_redirected_to mma_picks_accesses_path
  end
end

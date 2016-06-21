require 'test_helper'

class MmaPicksPoolsControllerTest < ActionController::TestCase
  setup do
    @mma_picks_pool = mma_picks_pools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mma_picks_pools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mma_picks_pool" do
    assert_difference('MmaPicksPool.count') do
      post :create, mma_picks_pool: { expires: @mma_picks_pool.expires, name: @mma_picks_pool.name, poolowner: @mma_picks_pool.poolowner }
    end

    assert_redirected_to mma_picks_pool_path(assigns(:mma_picks_pool))
  end

  test "should show mma_picks_pool" do
    get :show, id: @mma_picks_pool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mma_picks_pool
    assert_response :success
  end

  test "should update mma_picks_pool" do
    patch :update, id: @mma_picks_pool, mma_picks_pool: { expires: @mma_picks_pool.expires, name: @mma_picks_pool.name, poolowner: @mma_picks_pool.poolowner }
    assert_redirected_to mma_picks_pool_path(assigns(:mma_picks_pool))
  end

  test "should destroy mma_picks_pool" do
    assert_difference('MmaPicksPool.count', -1) do
      delete :destroy, id: @mma_picks_pool
    end

    assert_redirected_to mma_picks_pools_path
  end
end

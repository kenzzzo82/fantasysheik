require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get MMAPoolsMain" do
    get :MMAPoolsMain
    assert_response :success
  end

end

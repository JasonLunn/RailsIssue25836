require 'test_helper'

class BoomControllerTest < ActionController::TestCase
  test "should get boom" do
    get :boom, disable_boom: 'sssssh!'
    assert_response :success
  end

end

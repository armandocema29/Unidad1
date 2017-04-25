require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get index" do
    get admin_url
    assert_response :success
  end

end

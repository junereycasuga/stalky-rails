require 'test_helper'

class AuthorizationControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end

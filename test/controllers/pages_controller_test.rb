require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get cart" do
    get :cart
    assert_response :success
  end

end

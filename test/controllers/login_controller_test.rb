require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get login_page_url
    assert_response :success
  end

end

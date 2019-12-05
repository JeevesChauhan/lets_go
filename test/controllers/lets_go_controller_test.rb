require 'test_helper'

class LetsGoControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get lets_go_home_url
    assert_response :success
  end

  test "should get about" do
    get lets_go_about_url
    assert_response :success
  end

end

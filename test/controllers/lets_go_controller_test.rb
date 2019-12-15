require 'test_helper'

class LetsGoControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  test "should get home" do
    sign_in :bryan
    get root_url
    assert_response :success
  end

  test "should get about" do
    get about_path
    assert_response :success
  end

end

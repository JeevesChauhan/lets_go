require 'test_helper'

class LetsGoControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  # Error due to Devise being required
  #test "should get home" do
  #  sign_in :bryan
  #  get root_url
  #  assert_response :success
  #end

  test "no user should get redirected from about" do
    get about_path
    assert_response :success
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_template layout: 'application'
    assert_select 'title', 'LetsGo'
    assert_select 'h1', 'Contact'
    assert_select 'p', 'Complete the following form to send a message directly to me'
  end

  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params:
    {name: "Matthew", email: "matthew@me.com",telephone: "1234567890", message: "Hello"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end

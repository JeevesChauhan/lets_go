require 'test_helper'

class LandMarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @land_mark = land_marks(:one)
  end

  test "should get index" do
    get "/land_marks"
    assert_response :success
  end

end

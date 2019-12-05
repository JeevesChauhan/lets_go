require 'test_helper'

class LandMarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @land_mark = land_marks(:one)
  end

  test "should get index" do
    get land_marks_url
    assert_response :success
  end

  test "should get new" do
    get new_land_mark_url
    assert_response :success
  end

  test "should create land_mark" do
    assert_difference('LandMark.count') do
      post land_marks_url, params: { land_mark: { is_gym: @land_mark.is_gym, lat: @land_mark.lat, long: @land_mark.long, name: @land_mark.name } }
    end

    assert_redirected_to land_mark_url(LandMark.last)
  end

  test "should show land_mark" do
    get land_mark_url(@land_mark)
    assert_response :success
  end

  test "should get edit" do
    get edit_land_mark_url(@land_mark)
    assert_response :success
  end

  test "should update land_mark" do
    patch land_mark_url(@land_mark), params: { land_mark: { is_gym: @land_mark.is_gym, lat: @land_mark.lat, long: @land_mark.long, name: @land_mark.name } }
    assert_redirected_to land_mark_url(@land_mark)
  end

  test "should destroy land_mark" do
    assert_difference('LandMark.count', -1) do
      delete land_mark_url(@land_mark)
    end

    assert_redirected_to land_marks_url
  end
end

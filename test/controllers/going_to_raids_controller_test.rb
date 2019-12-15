require 'test_helper'

class GoingToRaidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @going_to_raid = going_to_raids(:one)
  end

  test "should get index" do
    get going_to_raids_url
    assert_response :success
  end

  test "should get new" do
    get new_going_to_raid_url
    assert_response :success
  end

  test "should create going_to_raid" do
    assert_difference('GoingToRaid.count') do
      post going_to_raids_url, params: { going_to_raid: { plan_raid_id: @going_to_raid.plan_raid_id, user_id: @going_to_raid.user_id } }
    end

    assert_redirected_to going_to_raid_url(GoingToRaid.last)
  end

  test "should show going_to_raid" do
    get going_to_raid_url(@going_to_raid)
    assert_response :success
  end

  test "should destroy going_to_raid" do
    assert_difference('GoingToRaid.count', -1) do
      delete going_to_raid_url(@going_to_raid)
    end

    assert_redirected_to going_to_raids_url
  end
end

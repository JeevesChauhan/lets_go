require 'test_helper'

class PlanRaidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_raid = plan_raids(:one)
  end

  test "should get index" do
    get plan_raids_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_raid_url
    assert_response :success
  end

  test "should create plan_raid" do
    assert_difference('PlanRaid.count') do
      post plan_raids_url, params: { plan_raid: { spot_raid_id: @plan_raid.spot_raid_id, start_time: @plan_raid.start_time, user_id: @plan_raid.user_id } }
    end

    assert_redirected_to plan_raid_url(PlanRaid.last)
  end

  test "should show plan_raid" do
    get plan_raid_url(@plan_raid)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_raid_url(@plan_raid)
    assert_response :success
  end

  test "should update plan_raid" do
    patch plan_raid_url(@plan_raid), params: { plan_raid: { spot_raid_id: @plan_raid.spot_raid_id, start_time: @plan_raid.start_time, user_id: @plan_raid.user_id } }
    assert_redirected_to plan_raid_url(@plan_raid)
  end
end

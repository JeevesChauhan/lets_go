require 'test_helper'

class PlanRaidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_raid = plan_raids(:one)
  end

  test "no user should get redirected from index" do
    get plan_raids_url
    assert_redirected_to new_user_session_url
  end

  test "no user should get redirected from new" do
    get new_plan_raid_url
    assert_redirected_to new_user_session_url
  end

  test "no user should redirected from create plan_raid" do
    post plan_raids_url, params: { plan_raid: { spot_raid_id: @plan_raid.spot_raid_id, start_time: @plan_raid.start_time, user_id: @plan_raid.user_id } }
    assert_redirected_to new_user_session_url
  end

  test "no user should show plan_raid" do
    get plan_raid_url(@plan_raid)
    assert_response :success
  end

  test "no user should get redirected from edit" do
    get edit_plan_raid_url(@plan_raid)
    assert_redirected_to new_user_session_url
  end

  test "no user should get redirected from update plan_raid" do
    patch plan_raid_url(@plan_raid), params: { plan_raid: { spot_raid_id: @plan_raid.spot_raid_id, start_time: @plan_raid.start_time, user_id: @plan_raid.user_id } }
    assert_redirected_to new_user_session_url
  end
end

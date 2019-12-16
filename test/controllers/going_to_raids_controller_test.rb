require 'test_helper'

class GoingToRaidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @going_to_raid = going_to_raids(:one)
  end

  test "no user should get redirected from index" do
    get going_to_raids_url
    assert_redirected_to new_user_session_url
  end

  test "no user should get redirected from new" do
    get new_going_to_raid_url
    assert_redirected_to new_user_session_url
  end

  test "no user should get redirected from create going_to_raid" do
    post going_to_raids_url, params: { going_to_raid: { plan_raid_id: @going_to_raid.plan_raid_id, user_id: @going_to_raid.user_id } }
    assert_redirected_to new_user_session_url
  end

  test "no user should show going_to_raid" do
    get going_to_raid_url(@going_to_raid)
    assert_response :success
  end

  test "no user should get redirected from destroy going_to_raid" do
    delete going_to_raid_url(@going_to_raid)
    assert_redirected_to new_user_session_url
  end
end

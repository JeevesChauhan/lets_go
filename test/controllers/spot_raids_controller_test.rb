require 'test_helper'

class SpotRaidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spot_raid = spot_raids(:one)
  end

  test "should get index" do
    get spot_raids_url
    assert_response :success
  end

  test "should get new" do
    get new_spot_raid_url
    assert_response :success
  end

  test "should create spot_raid" do
    assert_difference('SpotRaid.count') do
      post spot_raids_url, params: { spot_raid: { land_mark_id: @spot_raid.land_mark_id, pokemon_id: @spot_raid.pokemon_id, remaining_time: @spot_raid.remaining_time, tier: @spot_raid.tier, user_id: @spot_raid.user_id } }
    end

    assert_redirected_to spot_raid_url(SpotRaid.last)
  end

  test "should show spot_raid" do
    get spot_raid_url(@spot_raid)
    assert_response :success
  end

  test "should get edit" do
    get edit_spot_raid_url(@spot_raid)
    assert_response :success
  end

  test "should update spot_raid" do
    patch spot_raid_url(@spot_raid), params: { spot_raid: { land_mark_id: @spot_raid.land_mark_id, pokemon_id: @spot_raid.pokemon_id, remaining_time: @spot_raid.remaining_time, tier: @spot_raid.tier, user_id: @spot_raid.user_id } }
    assert_redirected_to spot_raid_url(@spot_raid)
  end

  test "should destroy spot_raid" do
    assert_difference('SpotRaid.count', -1) do
      delete spot_raid_url(@spot_raid)
    end

    assert_redirected_to spot_raids_url
  end
end

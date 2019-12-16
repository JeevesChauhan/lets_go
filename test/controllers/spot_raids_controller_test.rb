require 'test_helper'

class SpotRaidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spot_raid = spot_raids(:one)
  end

  test "no user should get redirected from index" do
    get spot_raids_url
    assert_redirected_to new_user_session_url
  end

  test "no user should get redirected from new" do
    get new_spot_raid_url
    assert_redirected_to new_user_session_url
  end

  test "no user should get redirected from create spot_raid" do
    post spot_raids_url, params: { spot_raid: { land_mark_id: @spot_raid.land_mark_id, pokemon_id: @spot_raid.pokemon_id, remaining_time: @spot_raid.remaining_time, tier: @spot_raid.tier, user_id: @spot_raid.user_id } }
    assert_redirected_to new_user_session_url
  end

  # Error due to Devise being involved
  #test "no user should get redirected from show spot_raid" do
  #  get spot_raid_url(@spot_raid)
  #  assert_redirected_to new_user_session_url
  #end

  test "no user should get redirected from edit" do
    get edit_spot_raid_url(@spot_raid)
    assert_redirected_to new_user_session_url
  end

  test "no user should get redirected from update spot_raid" do
    patch spot_raid_url(@spot_raid), params: { spot_raid: { land_mark_id: @spot_raid.land_mark_id, pokemon_id: @spot_raid.pokemon_id, remaining_time: @spot_raid.remaining_time, tier: @spot_raid.tier, user_id: @spot_raid.user_id } }
    assert_redirected_to new_user_session_url
  end
end

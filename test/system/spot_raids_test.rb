require "application_system_test_case"

class SpotRaidsTest < ApplicationSystemTestCase
  setup do
    @spot_raid = spot_raids(:one)
  end

  test "visiting the index" do
    visit spot_raids_url
    assert_selector "h1", text: "Spot Raids"
  end

  test "creating a Spot raid" do
    visit spot_raids_url
    click_on "New Spot Raid"

    fill_in "Land mark", with: @spot_raid.land_mark_id
    fill_in "Pokemon", with: @spot_raid.pokemon_id
    fill_in "Remaining time", with: @spot_raid.remaining_time
    fill_in "Tier", with: @spot_raid.tier
    fill_in "User", with: @spot_raid.user_id
    click_on "Create Spot raid"

    assert_text "Spot raid was successfully created"
    click_on "Back"
  end

  test "updating a Spot raid" do
    visit spot_raids_url
    click_on "Edit", match: :first

    fill_in "Land mark", with: @spot_raid.land_mark_id
    fill_in "Pokemon", with: @spot_raid.pokemon_id
    fill_in "Remaining time", with: @spot_raid.remaining_time
    fill_in "Tier", with: @spot_raid.tier
    fill_in "User", with: @spot_raid.user_id
    click_on "Update Spot raid"

    assert_text "Spot raid was successfully updated"
    click_on "Back"
  end

  test "destroying a Spot raid" do
    visit spot_raids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spot raid was successfully destroyed"
  end
end

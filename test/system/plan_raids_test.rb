require "application_system_test_case"

class PlanRaidsTest < ApplicationSystemTestCase
  setup do
    @plan_raid = plan_raids(:one)
  end

  test "visiting the index" do
    visit plan_raids_url
    assert_selector "h1", text: "Plan Raids"
  end

  test "creating a Plan raid" do
    visit plan_raids_url
    click_on "New Plan Raid"

    fill_in "Spot raid", with: @plan_raid.spot_raid_id
    fill_in "Start time", with: @plan_raid.start_time
    fill_in "User", with: @plan_raid.user_id
    click_on "Create Plan raid"

    assert_text "Plan raid was successfully created"
    click_on "Back"
  end

  test "updating a Plan raid" do
    visit plan_raids_url
    click_on "Edit", match: :first

    fill_in "Spot raid", with: @plan_raid.spot_raid_id
    fill_in "Start time", with: @plan_raid.start_time
    fill_in "User", with: @plan_raid.user_id
    click_on "Update Plan raid"

    assert_text "Plan raid was successfully updated"
    click_on "Back"
  end

  test "destroying a Plan raid" do
    visit plan_raids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plan raid was successfully destroyed"
  end
end

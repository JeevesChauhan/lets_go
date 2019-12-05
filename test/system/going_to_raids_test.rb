require "application_system_test_case"

class GoingToRaidsTest < ApplicationSystemTestCase
  setup do
    @going_to_raid = going_to_raids(:one)
  end

  test "visiting the index" do
    visit going_to_raids_url
    assert_selector "h1", text: "Going To Raids"
  end

  test "creating a Going to raid" do
    visit going_to_raids_url
    click_on "New Going To Raid"

    fill_in "Plan raid", with: @going_to_raid.plan_raid_id
    fill_in "User", with: @going_to_raid.user_id
    click_on "Create Going to raid"

    assert_text "Going to raid was successfully created"
    click_on "Back"
  end

  test "updating a Going to raid" do
    visit going_to_raids_url
    click_on "Edit", match: :first

    fill_in "Plan raid", with: @going_to_raid.plan_raid_id
    fill_in "User", with: @going_to_raid.user_id
    click_on "Update Going to raid"

    assert_text "Going to raid was successfully updated"
    click_on "Back"
  end

  test "destroying a Going to raid" do
    visit going_to_raids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Going to raid was successfully destroyed"
  end
end

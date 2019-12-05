require "application_system_test_case"

class LandMarksTest < ApplicationSystemTestCase
  setup do
    @land_mark = land_marks(:one)
  end

  test "visiting the index" do
    visit land_marks_url
    assert_selector "h1", text: "Land Marks"
  end

  test "creating a Land mark" do
    visit land_marks_url
    click_on "New Land Mark"

    check "Is gym" if @land_mark.is_gym
    fill_in "Lat", with: @land_mark.lat
    fill_in "Long", with: @land_mark.long
    fill_in "Name", with: @land_mark.name
    click_on "Create Land mark"

    assert_text "Land mark was successfully created"
    click_on "Back"
  end

  test "updating a Land mark" do
    visit land_marks_url
    click_on "Edit", match: :first

    check "Is gym" if @land_mark.is_gym
    fill_in "Lat", with: @land_mark.lat
    fill_in "Long", with: @land_mark.long
    fill_in "Name", with: @land_mark.name
    click_on "Update Land mark"

    assert_text "Land mark was successfully updated"
    click_on "Back"
  end

  test "destroying a Land mark" do
    visit land_marks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Land mark was successfully destroyed"
  end
end

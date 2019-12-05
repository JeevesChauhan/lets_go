require "application_system_test_case"

class PokeEventsTest < ApplicationSystemTestCase
  setup do
    @poke_event = poke_events(:one)
  end

  test "visiting the index" do
    visit poke_events_url
    assert_selector "h1", text: "Poke Events"
  end

  test "creating a Poke event" do
    visit poke_events_url
    click_on "New Poke Event"

    fill_in "Description", with: @poke_event.description
    fill_in "Land mark", with: @poke_event.land_mark_id
    fill_in "Title", with: @poke_event.title
    fill_in "User", with: @poke_event.user_id
    click_on "Create Poke event"

    assert_text "Poke event was successfully created"
    click_on "Back"
  end

  test "updating a Poke event" do
    visit poke_events_url
    click_on "Edit", match: :first

    fill_in "Description", with: @poke_event.description
    fill_in "Land mark", with: @poke_event.land_mark_id
    fill_in "Title", with: @poke_event.title
    fill_in "User", with: @poke_event.user_id
    click_on "Update Poke event"

    assert_text "Poke event was successfully updated"
    click_on "Back"
  end

  test "destroying a Poke event" do
    visit poke_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poke event was successfully destroyed"
  end
end

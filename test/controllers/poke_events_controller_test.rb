require 'test_helper'

class PokeEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poke_event = poke_events(:one)
  end

  test "should get index" do
    get poke_events_url
    assert_response :success
  end

  test "should get new" do
    get new_poke_event_url
    assert_response :success
  end

  test "should create poke_event" do
    assert_difference('PokeEvent.count') do
      post poke_events_url, params: { poke_event: { description: @poke_event.description, land_mark_id: @poke_event.land_mark_id, title: @poke_event.title, user_id: @poke_event.user_id } }
    end

    assert_redirected_to poke_event_url(PokeEvent.last)
  end

  test "should show poke_event" do
    get poke_event_url(@poke_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_poke_event_url(@poke_event)
    assert_response :success
  end

  test "should update poke_event" do
    patch poke_event_url(@poke_event), params: { poke_event: { description: @poke_event.description, land_mark_id: @poke_event.land_mark_id, title: @poke_event.title, user_id: @poke_event.user_id } }
    assert_redirected_to poke_event_url(@poke_event)
  end

  test "should destroy poke_event" do
    assert_difference('PokeEvent.count', -1) do
      delete poke_event_url(@poke_event)
    end

    assert_redirected_to poke_events_url
  end
end

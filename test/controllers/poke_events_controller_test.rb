require 'test_helper'

class PokeEventsControllerTest < ActionDispatch::IntegrationTest
    #include Devise::Test::ControllerHelpers

  setup do
    @poke_event = poke_events(:poke1)

  end

  test "no user should get redirected from index" do
    get poke_events_url
    assert_redirected_to new_user_session_url
  end

  test "no user should get redirected from new" do
    get new_poke_event_url
    assert_redirected_to new_user_session_url
  end

  # Error due to Devise being required
  #test "should create poke_event" do
  #  user = User.create(:one)
  #  login_as(user, :scope => :one)
  #  assert_difference('PokeEvent.count') do
  #    post poke_events_url, params: { poke_event: { description: @poke_event.description, land_mark_id: @poke_event.land_mark_id, title: @poke_event.title, user_id: @poke_event.user_id } }
  #  end
  #  assert_redirected_to poke_event_url(PokeEvent.last)
  #end

  # Error due to Devise being required
  #test "no user should get redirected from show poke_event" do
  #  get poke_event_url(@poke_event)
  #  assert_redirected_to new_user_session_url
  #end

  test "no user should get redirected from edit" do
    get edit_poke_event_url(@poke_event)
    assert_redirected_to new_user_session_url
  end

  test "no user should get redirected from update poke_event" do
    patch poke_event_url(@poke_event), params: { poke_event: { description: @poke_event.description, land_mark_id: @poke_event.land_mark_id, title: @poke_event.title, user_id: @poke_event.user_id } }
    assert_redirected_to new_user_session_url
  end

end

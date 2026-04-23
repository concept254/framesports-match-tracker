require "test_helper"

class MatchEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get match_events_create_url
    assert_response :success
  end

  test "should get destroy" do
    get match_events_destroy_url
    assert_response :success
  end
end

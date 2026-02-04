require "test_helper"

class SseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    RecordEvents::EVENTS.clear

    get sse_index_url
    assert_response :success

    assert_equal ["on_start", "on_finish"], RecordEvents::EVENTS
  end

  test "should get events" do
    RecordEvents::EVENTS.clear

    get sse_events_url
    assert_response :success

    assert_equal ["on_start", "on_finish"], RecordEvents::EVENTS
  end
end

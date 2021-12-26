require "test_helper"

class MyTimelinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_timeline = my_timelines(:one)
  end

  test "should get index" do
    get my_timelines_url, as: :json
    assert_response :success
  end

  test "should create my_timeline" do
    assert_difference("MyTimeline.count") do
      post my_timelines_url, params: { my_timeline: { body: @my_timeline.body, post: @my_timeline.post } }, as: :json
    end

    assert_response :created
  end

  test "should show my_timeline" do
    get my_timeline_url(@my_timeline), as: :json
    assert_response :success
  end

  test "should update my_timeline" do
    patch my_timeline_url(@my_timeline), params: { my_timeline: { body: @my_timeline.body, post: @my_timeline.post } }, as: :json
    assert_response :success
  end

  test "should destroy my_timeline" do
    assert_difference("MyTimeline.count", -1) do
      delete my_timeline_url(@my_timeline), as: :json
    end

    assert_response :no_content
  end
end

require 'test_helper'

class MessageBlockersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message_blocker = message_blockers(:one)
  end

  test "should get index" do
    get message_blockers_url
    assert_response :success
  end

  test "should get new" do
    get new_message_blocker_url
    assert_response :success
  end

  test "should create message_blocker" do
    assert_difference('MessageBlocker.count') do
      post message_blockers_url, params: { message_blocker: { description: @message_blocker.description, email_matcher: @message_blocker.email_matcher, ip_matcher: @message_blocker.ip_matcher, message_matcher: @message_blocker.message_matcher, name_matcher: @message_blocker.name_matcher, rule_name: @message_blocker.rule_name } }
    end

    assert_redirected_to message_blocker_url(MessageBlocker.last)
  end

  test "should show message_blocker" do
    get message_blocker_url(@message_blocker)
    assert_response :success
  end

  test "should get edit" do
    get edit_message_blocker_url(@message_blocker)
    assert_response :success
  end

  test "should update message_blocker" do
    patch message_blocker_url(@message_blocker), params: { message_blocker: { description: @message_blocker.description, email_matcher: @message_blocker.email_matcher, ip_matcher: @message_blocker.ip_matcher, message_matcher: @message_blocker.message_matcher, name_matcher: @message_blocker.name_matcher, rule_name: @message_blocker.rule_name } }
    assert_redirected_to message_blocker_url(@message_blocker)
  end

  test "should destroy message_blocker" do
    assert_difference('MessageBlocker.count', -1) do
      delete message_blocker_url(@message_blocker)
    end

    assert_redirected_to message_blockers_url
  end
end

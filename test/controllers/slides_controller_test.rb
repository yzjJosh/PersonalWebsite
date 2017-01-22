require 'test_helper'

class SlidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slide = slides(:one)
  end

  test "should get index" do
    get slides_url
    assert_response :success
  end

  test "should get new" do
    get new_slide_url
    assert_response :success
  end

  test "should create slide" do
    assert_difference('Slide.count') do
      post slides_url, params: { slide: { background: @slide.background, content: @slide.content, title: @slide.title } }
    end

    assert_redirected_to slide_url(Slide.last)
  end

  test "should show slide" do
    get slide_url(@slide)
    assert_response :success
  end

  test "should get edit" do
    get edit_slide_url(@slide)
    assert_response :success
  end

  test "should update slide" do
    patch slide_url(@slide), params: { slide: { background: @slide.background, content: @slide.content, title: @slide.title } }
    assert_redirected_to slide_url(@slide)
  end

  test "should destroy slide" do
    assert_difference('Slide.count', -1) do
      delete slide_url(@slide)
    end

    assert_redirected_to slides_url
  end
end

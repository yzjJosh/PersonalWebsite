require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { address: @person.address, company_or_school: @person.company_or_school, description: @person.description, email: @person.email, facebook_url: @person.facebook_url, github_url: @person.github_url, google_plus_url: @person.google_plus_url, linkedin_url: @person.linkedin_url, name: @person.name, profile_photo_url: @person.profile_photo_url, title: @person.title, wechat_barcode_url: @person.wechat_barcode_url } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { address: @person.address, company_or_school: @person.company_or_school, description: @person.description, email: @person.email, facebook_url: @person.facebook_url, github_url: @person.github_url, google_plus_url: @person.google_plus_url, linkedin_url: @person.linkedin_url, name: @person.name, profile_photo_url: @person.profile_photo_url, title: @person.title, wechat_barcode_url: @person.wechat_barcode_url } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end

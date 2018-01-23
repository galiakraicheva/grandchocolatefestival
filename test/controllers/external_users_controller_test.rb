require 'test_helper'

class ExternalUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @external_user = external_users(:one)
  end

  test "should get index" do
    get external_users_url
    assert_response :success
  end

  test "should get new" do
    get new_external_user_url
    assert_response :success
  end

  test "should create external_user" do
    assert_difference('ExternalUser.count') do
      post external_users_url, params: { external_user: { email: @external_user.email } }
    end

    assert_redirected_to external_user_url(ExternalUser.last)
  end

  test "should show external_user" do
    get external_user_url(@external_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_external_user_url(@external_user)
    assert_response :success
  end

  test "should update external_user" do
    patch external_user_url(@external_user), params: { external_user: { email: @external_user.email } }
    assert_redirected_to external_user_url(@external_user)
  end

  test "should destroy external_user" do
    assert_difference('ExternalUser.count', -1) do
      delete external_user_url(@external_user)
    end

    assert_redirected_to external_users_url
  end
end

require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get newrails" do
    get users_newrails_url
    assert_response :success
  end

  test "should get generate" do
    get users_generate_url
    assert_response :success
  end

  test "should get controller" do
    get users_controller_url
    assert_response :success
  end

  test "should get Users" do
    get users_Users_url
    assert_response :success
  end

  test "should get newrails" do
    get users_newrails_url
    assert_response :success
  end

  test "should get generate" do
    get users_generate_url
    assert_response :success
  end

  test "should get controller" do
    get users_controller_url
    assert_response :success
  end

  test "should get Users" do
    get users_Users_url
    assert_response :success
  end

  test "should get new" do
    get users_new_url
    assert_response :success
  end
end

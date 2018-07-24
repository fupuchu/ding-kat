require 'test_helper'

class SubscriptionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subscription_index_url
    assert_response :success
  end

  test "should get show" do
    get subscription_show_url
    assert_response :success
  end

  test "should get new" do
    get subscription_new_url
    assert_response :success
  end

  test "should get edit" do
    get subscription_edit_url
    assert_response :success
  end

  test "should get create" do
    get subscription_create_url
    assert_response :success
  end

  test "should get update" do
    get subscription_update_url
    assert_response :success
  end

  test "should get destroy" do
    get subscription_destroy_url
    assert_response :success
  end

end

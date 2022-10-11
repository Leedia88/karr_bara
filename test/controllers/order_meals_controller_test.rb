require 'test_helper'

class OrderMealsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get order_meals_new_url
    assert_response :success
  end

  test "should get edit" do
    get order_meals_edit_url
    assert_response :success
  end

  test "should get update" do
    get order_meals_update_url
    assert_response :success
  end

  test "should get destroy" do
    get order_meals_destroy_url
    assert_response :success
  end

  test "should get show" do
    get order_meals_show_url
    assert_response :success
  end

end

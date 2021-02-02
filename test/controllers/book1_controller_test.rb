require "test_helper"

class Book1ControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get book1_add_url
    assert_response :success
  end

  test "should get delete" do
    get book1_delete_url
    assert_response :success
  end

  test "should get update" do
    get book1_update_url
    assert_response :success
  end

  test "should get search" do
    get book1_search_url
    assert_response :success
  end

  test "should get save" do
    get book1_save_url
    assert_response :success
  end

  test "should get list" do
    get book1_list_url
    assert_response :success
  end
end

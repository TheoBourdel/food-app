require "test_helper"

class FridgeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fridge_index_url
    assert_response :success
  end

  test "should get show" do
    get fridge_show_url
    assert_response :success
  end

  test "should get new" do
    get fridge_new_url
    assert_response :success
  end

  test "should get edit" do
    get fridge_edit_url
    assert_response :success
  end
end

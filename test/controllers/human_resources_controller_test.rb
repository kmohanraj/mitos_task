require 'test_helper'

class HumanResourcesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get human_resources_index_url
    assert_response :success
  end

  test "should get mew" do
    get human_resources_mew_url
    assert_response :success
  end

  test "should get edit" do
    get human_resources_edit_url
    assert_response :success
  end

  test "should get show" do
    get human_resources_show_url
    assert_response :success
  end

end

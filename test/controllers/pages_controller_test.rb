require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_path
    assert_response :success
  end

  test "should get new" do
    get new_page_path
    assert_response :success
  end

end

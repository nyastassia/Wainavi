require "test_helper"

class WineriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wineries_index_url
    assert_response :success
  end
end

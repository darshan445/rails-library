require "test_helper"

class TutionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tutions_index_url
    assert_response :success
  end
end

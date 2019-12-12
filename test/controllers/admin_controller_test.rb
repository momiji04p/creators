require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get videos" do
    get admin_videos_url
    assert_response :success
  end

end

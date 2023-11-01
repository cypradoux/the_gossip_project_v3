require "test_helper"

class TheGossipProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get the_gossip_project_home_url
    assert_response :success
  end
end

require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get mydashboard" do
    get dashboards_mydashboard_url
    assert_response :success
  end

end

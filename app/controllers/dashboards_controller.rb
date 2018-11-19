class DashboardsController < ApplicationController
  def mydashboard
    @cases = current_user.cases
    @requests = current_user.requests
    @user = current_user
  end
end

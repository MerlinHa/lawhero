class DashboardsController < ApplicationController
  def mydashboard
    @cases = current_user.cases
    @user = current_user
    @requests = @cases.where(status: nil)
    @currents = @cases.where(status: "active")
    @archiveds = @cases.where(status: "archived")
    @declineds = @cases.where(status: "declined")
  end
end

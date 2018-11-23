class DashboardsController < ApplicationController
  def mydashboard
    @cases = current_user.cases
    @user = current_user
    # @lawyer_cases = @cases.
    @accepted_cases = @cases.where(status: "Accepted")
    @declined_cases = @cases.where(status: "Declined")
    @pending_cases = @cases.where(status: nil)

  end
end

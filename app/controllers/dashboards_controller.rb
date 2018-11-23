class DashboardsController < ApplicationController
  def mydashboard
    @cases = current_user.cases
    @user = current_user

    @accepted_cases = @cases.where(status: "Accepted")
    @declined_cases = @cases.where(status: "Declined")
    @pending_cases = @cases.where(status: nil)

    # @cases_lawyer = current_user.cases
    # @current_lawyer = Lawyer.where(user_id: current_user[:id])
    # @lawyer_cases = @current_lawyer.cases
    if current_user.lawyer?
      @cases_lawyer = current_user.lawyers.first.cases
      @accepted_cases_lawyer = @cases_lawyer.where(status: "Accepted")
      @declined_cases_lawyer = @cases_lawyer.where(status: "Declined")
      @pending_cases_lawyer = @cases_lawyer.where(status: nil)
    end
  end
end




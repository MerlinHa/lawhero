class CasesController < ApplicationController

  def index
    @cases = current_user.cases
    @user = current_user
  end

  def new
    @case = Case.new
    @request = Request.find(params[:request_id])
  end

  def create
    @case = Case.new(params_cases)
    @request = Request.find(params[:request_id])
    # @case.request = @request
    @case.save
    redirect_to cases_path
  end

  private

  def params_cases
    params.require(:case).permit(:title, :description)
  end
end


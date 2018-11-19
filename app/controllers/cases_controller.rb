class CasesController < ApplicationController

  def index
    @cases = current_user.cases
    @user = current_user
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(params_cases)
    # @case.request = @request
    @case.save
    redirect_to cases_path
  end

  private

  def params_cases
    params.require(:case).permit(:title, :description, :status, user_id, :lawyer_id, {documents: []})
  end
end


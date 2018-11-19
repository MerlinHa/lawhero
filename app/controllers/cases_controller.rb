class CasesController < ApplicationController

  def index
    @cases = current_user.cases
    @user = current_user
  end

  def new
    @case = Case.new
    @lawyer = Lawyer.find(params[:lawyer_id])
    @case.lawyer = @lawyer
    @case.user = current_user
    if @case.save
      redirect_to new_order_payment_path(@case)
    else
      render :new
    end
  end

  def show
    @case = Case.find(params[:id])
  end

  def index
    @cases = current_user.cases
    @user = current_user
  end

  def create
    @case = Case.new(case_params)
    @case.save
    redirect_to cases_path
  end

  private

  def case_params
    params.require(:case).permit(:user_id, :lawyer_id, :status, :title, :description, {documents: []})
  end
end


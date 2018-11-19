class CasesController < ApplicationController

  def index
    @cases = current_user.cases
    @user = current_user
  end

  def new
    @case = Case.new(params_cases)
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
    @case = Case.new(params_cases)
    @case.save
    redirect_to cases_path
  end

  private

  def params_cases
    params.require(:case).permit(:title, :description, :status, user_id, :lawyer_id, {documents: []})
  end
end


class CasesController < ApplicationController

  def index
    @cases = current_user.cases
    @user = current_user
  end

  def show
    @case = Case.find(params[:id])
    @user = current_user
    @message = Message.new
  end


  def new
    @case = Case.new
    @lawyer = Lawyer.find(params[:lawyer_id])

  end

  def edit
    @case = Case.find(params[:id])
  end

  def update
    @user = current_user
    @case = Case.find(params[:id])
    @case.update(case_params)
    if @case.save
      redirect_to case_path(@case)
    else
      render
    end
  end

  def create
    @case = Case.new(case_params)
    @lawyer = Lawyer.find(params[:lawyer_id])
    @case.lawyer = @lawyer
    @case.user = current_user

    if params[:documents].present?
      params[:documents].each do |docu|
        @case.documents.build(file: docu)
      end
    end

    if @case.save
      order = Order.new(lawyer_sku: @lawyer.sku, amount: @lawyer.price, state: 'pending')
      order.case = @case
      order.user = current_user
      order.save
      redirect_to new_order_payment_path(@case)
    else
      render :new
    end
  end

  private

  def case_params
    params.require(:case).permit(:user_id, :lawyer_id, :status, :title, :description)
  end
end

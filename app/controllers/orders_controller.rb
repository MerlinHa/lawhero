class OrdersController < ApplicationController
  def create
  lawyer = Lawyer.find(params[:lawyer_id])
  order  = Order.create!(lawyer_sku: lawyer.sku, amount: lawyer.price, state: 'pending', user: current_user)
  redirect_to new_order_payment_path(order)
  end

  def show
  @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

end

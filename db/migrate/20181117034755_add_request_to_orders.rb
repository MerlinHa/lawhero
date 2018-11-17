class AddRequestToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :request_id, :integer
  end
end

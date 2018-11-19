class RenameRequestIdInOrders < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :request_id, :case_id
  end
end

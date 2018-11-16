class AddSkuToLawyer < ActiveRecord::Migration[5.2]
  def change
    add_column :lawyers, :sku, :string
  end
end

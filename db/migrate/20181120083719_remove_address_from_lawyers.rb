class RemoveAddressFromLawyers < ActiveRecord::Migration[5.2]
  def change
    remove_column :lawyers, :address, :string
  end
end

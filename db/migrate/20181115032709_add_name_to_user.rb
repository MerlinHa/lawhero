class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :lawyer, :boolean, default: false
    add_column :users, :phone, :string
    add_column :users, :photo, :string
  end
end

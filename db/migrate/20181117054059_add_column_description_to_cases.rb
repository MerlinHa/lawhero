class AddColumnDescriptionToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :description, :string
  end
end

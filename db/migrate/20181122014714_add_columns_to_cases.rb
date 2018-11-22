class AddColumnsToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :financial_cost, :integer, default: 1000
    add_column :cases, :overall_length, :integer, default: 180
    add_column :cases, :odds_success, :integer, default: 50
  end
end

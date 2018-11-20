class Addforeignkey < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :case_id, :bigint
    add_foreign_key :conversations, :cases
  end
end

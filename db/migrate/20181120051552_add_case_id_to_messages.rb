class AddCaseIdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :case_id, :bigint
    add_foreign_key :messages, :cases
  end
end

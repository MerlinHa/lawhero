class AddCaseidToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :case, foreign_key: true
  end
end

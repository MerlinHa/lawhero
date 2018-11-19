class AddDocumentsToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :documents, :json
  end
end

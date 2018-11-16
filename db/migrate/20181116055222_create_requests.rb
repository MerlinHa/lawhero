class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.references :lawyer, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end

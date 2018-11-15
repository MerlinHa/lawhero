class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.references :user, foreign_key: true
      t.references :lawyer, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end

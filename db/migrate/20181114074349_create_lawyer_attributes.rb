class CreateLawyerAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyer_attributes do |t|
      t.string :attr_type
      t.references :attr_id, foreign_key: true
      t.references :lawyer, foreign_key: true

      t.timestamps
    end
  end
end

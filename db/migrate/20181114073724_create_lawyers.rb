class CreateLawyers < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyers do |t|
      t.references :user, foreign_key: true
      t.string :short_desc
      t.string :long_desc
      t.string :email
      t.string :phone
      t.string :address
      t.string :photo

      t.timestamps
    end
  end
end

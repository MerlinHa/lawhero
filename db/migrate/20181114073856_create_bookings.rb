class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :lawyer, foreign_key: true
      t.integer :price
      t.string :status

      t.timestamps
    end
  end
end

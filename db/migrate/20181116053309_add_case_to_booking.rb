class AddCaseToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :case_id, :integer
  end
end

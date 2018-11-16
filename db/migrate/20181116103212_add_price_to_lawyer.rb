class AddPriceToLawyer < ActiveRecord::Migration[5.2]
  def change
    add_monetize :lawyers, :price, currency: { present: false }
  end
end

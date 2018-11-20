class AddCityToLawyers < ActiveRecord::Migration[5.2]
  def change
    add_column :lawyers, :city, :string
  end
end

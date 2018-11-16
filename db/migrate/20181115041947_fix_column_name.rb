class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :lawyer_properties, :attr_id, :property_id
    rename_column :lawyer_properties, :attr_type, :property_type
  end
end

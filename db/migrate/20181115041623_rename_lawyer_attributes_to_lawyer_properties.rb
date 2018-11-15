class RenameLawyerAttributesToLawyerProperties < ActiveRecord::Migration[5.2]
  def change
    rename_table :lawyer_attributes, :lawyer_properties
  end
end

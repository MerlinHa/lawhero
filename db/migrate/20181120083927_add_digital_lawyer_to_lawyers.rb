class AddDigitalLawyerToLawyers < ActiveRecord::Migration[5.2]
  def change
    add_column :lawyers, :digital_lawyer, :boolean, default: false
  end
end

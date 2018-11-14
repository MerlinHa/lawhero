class CreateLawFields < ActiveRecord::Migration[5.2]
  def change
    create_table :law_fields do |t|
      t.string :content

      t.timestamps
    end
  end
end

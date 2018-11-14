class CreateCommunications < ActiveRecord::Migration[5.2]
  def change
    create_table :communications do |t|
      t.string :content

      t.timestamps
    end
  end
end

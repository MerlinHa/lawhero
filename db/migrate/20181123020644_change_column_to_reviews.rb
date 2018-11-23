class ChangeColumnToReviews < ActiveRecord::Migration[5.2]
  def change

    add_reference :reviews, :case, foreign_key: true
  end
end

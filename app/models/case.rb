class Case < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer
  # after_create :add_order
  has_one :order
  has_many :documents
  accepts_nested_attributes_for :documents

  def add_order
    order = Order.new(case_id: self.id, lawyer_sku: self.lawyer.sku, amount: self.lawyer.price, user: self.user, state: 'pending')
    order.save
  end
end

class Request < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer
  after_create :add_order
  has_one :order
  has_one :case

  def add_order
    Order.create(request_id: self.id, lawyer_sku: self.lawyer.sku, amount: self.lawyer.price, user: self.user, state: 'pending')
  end
end

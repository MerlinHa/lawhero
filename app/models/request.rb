class Request < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer
  after_create :add_order

  def add_order
    Order.create(request: self, lawyer_sku: self.lawyer.sku, amount: self.lawyer.price, user: self.user)
  end
end

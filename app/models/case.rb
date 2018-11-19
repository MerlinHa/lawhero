class Case < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer
  # after_create :add_order
  has_one :order
  mount_uploaders :documents, PhotoUploader

  def add_order
    order = Order.new(case_id: self.id, lawyer_sku: self.lawyer.sku, amount: self.lawyer.price, user: self.user, state: 'pending')
    order.save
  raise
  end
end

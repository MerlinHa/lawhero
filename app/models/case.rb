class Case < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer
  mount_uploaders :documents, PhotoUploader

  def add_order
    Order.create(request_id: self.id, lawyer_sku: self.lawyer.sku, amount: self.lawyer.price, user: self.user, state: 'pending')
  end

  private

  def case_params
    params.require(:case).permit(:user_id, :lawyer_id, :status, :title, :description, {documents: []})
  end
end

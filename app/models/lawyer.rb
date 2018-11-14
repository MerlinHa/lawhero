class Lawyer < ApplicationRecord
  belongs_to :user
  has_many :lawyer_attributes
end

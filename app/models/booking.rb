class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer
  has_many :reviews
end

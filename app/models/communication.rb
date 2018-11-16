class Communication < ApplicationRecord
  has_many :lawyer_properties, as: :properties
end

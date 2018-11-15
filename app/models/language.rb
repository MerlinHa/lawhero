class Language < ApplicationRecord
  has_many :lawyer_attributes, as: :properties
end

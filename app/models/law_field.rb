class LawField < ApplicationRecord
  has_many :lawyer_attributes, as: :attr_id
end

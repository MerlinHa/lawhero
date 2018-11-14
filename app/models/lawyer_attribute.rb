class LawyerAttribute < ApplicationRecord
  belongs_to :attr_id, polymorphic: true
  belongs_to :lawyer
end

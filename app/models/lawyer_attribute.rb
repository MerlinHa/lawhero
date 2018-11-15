class LawyerAttribute < ApplicationRecord
  belongs_to :property, polymorphic: true
  belongs_to :lawyer
end

# attr
# attr_id
# attr_type

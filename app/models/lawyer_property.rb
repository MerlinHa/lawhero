class LawyerProperty < ApplicationRecord
  belongs_to :property, polymorphic: true
  belongs_to :lawyer, polymorphic: true
end

# attr
# attr_id
# attr_type

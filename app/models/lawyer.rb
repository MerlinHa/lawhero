class Lawyer < ApplicationRecord
  belongs_to :user
  has_many :lawyer_attributes
  has_many :languages, through: :lawyer_attributes, source: :attr_id, source_type: 'Language'
  has_many :law_fields, through: :lawyer_attributes, source: :attr_id, source_type: 'LawField'
  has_many :payment_types, through: :lawyer_attributes, source: :attr_id, source_type: 'PaymentType'
  has_many :communications, through: :lawyer_attributes, source: :attr_id, source_type: 'Communication'
  mount_uploader :photo, PhotoUploader
end

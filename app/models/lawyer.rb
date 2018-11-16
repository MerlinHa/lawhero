class Lawyer < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :lawyer_properties
  has_many :languages
  has_many :law_fields
  has_many :payment_types
  has_many :communications
  has_many :bookings
  has_many :reviews, through: :bookings
  #has_many :languages, through: :lawyer_properties, source: :property_id, source_type: 'Language'
  # has_many :law_fields, through: :lawyer_properties, source: :property_id, source_type: 'LawField'
  # has_many :law_fields, through: :lawyer_properties, source: :property_id, source_type: 'LawField'
  # has_many :payment_types, through: :lawyer_properties, source: :property_id, source_type: 'PaymentType'
  # has_many :communications, through: :lawyer_properties, source: :property_id, source_type: 'Communication'
end

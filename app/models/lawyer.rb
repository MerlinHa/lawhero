class Lawyer < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :lawyer_properties
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many :languages, through: :lawyer_properties, source: :property, source_type: 'Language'
  has_many :law_fields, through: :lawyer_properties, source: :property, source_type: 'LawField'
  has_many :law_fields, through: :lawyer_properties, source: :property, source_type: 'LawField'
  has_many :payment_types, through: :lawyer_properties, source: :property, source_type: 'PaymentType'
  has_many :communications, through: :lawyer_properties, source: :property, source_type: 'Communication'
  monetize :price_cents

accepts_nested_attributes_for :languages, :communications, :law_fields, :payment_types

end

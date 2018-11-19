class Document < ApplicationRecord
  belongs_to :case
  mount_uploader :file, PhotoUploader
end

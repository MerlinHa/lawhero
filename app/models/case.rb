class Case < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer
  belongs_to :request
  mount_uploaders :documents, PhotoUploader
end

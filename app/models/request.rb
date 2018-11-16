class Request < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer
  belongs_to :case
end

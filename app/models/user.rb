class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  mount_uploader :photo, PhotoUploader
  has_many :lawyers
  has_many :orders
  has_many :cases

  def lawyer?
    lawyers.any?
  end
end

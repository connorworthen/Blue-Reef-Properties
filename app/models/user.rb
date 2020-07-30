class User < ApplicationRecord
  has_secure_password
  has_many :listings
  # validates :name, :email, presence: true
end
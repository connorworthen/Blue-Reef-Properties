class Model < ActiveRecord::Base
  has_secure_password
  validates :name, :email, presence: true
  validates :username, :email, uniqueness: true
end
class User < ApplicationRecord
  has_secure_password validations: true
  has_many :messages
  
  validates :name, presence: true, uniqueness: true
end

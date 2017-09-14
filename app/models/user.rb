class User < ApplicationRecord
  has_many :snippets

  validates_length_of :username, minimum: 3, maximum: 16
  validates :email, email: true, uniqueness: true

  has_secure_password
end

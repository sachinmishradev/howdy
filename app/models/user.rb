class User < ApplicationRecord
  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :username , presence: true ,uniqueness: { case_sensitive: false }, length: {  minimum: 3,maximum: 60 }
  validates :email , presence: true ,uniqueness: true, length: {  minimum: 3,maximum: 60 }, format: { with: VALID_EMAIL }

end

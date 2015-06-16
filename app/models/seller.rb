class Seller < ActiveRecord::Base
  has_many :items

  has_secure_password


  validates :email, presence: true, length: { in: 8..25 }, uniqueness: { case_sensitive: false },
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :password, presence: true, length: { in: 8..100 },
            confirmation: true


end


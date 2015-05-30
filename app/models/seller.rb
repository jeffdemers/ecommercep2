class Seller < ActiveRecord::Base
  has_many :items

  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false}

end

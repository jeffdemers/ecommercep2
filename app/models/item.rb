class Item < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_one :seller

  def price
    "$%.2f" % self[:price]
  end

end

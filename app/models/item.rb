class Item < ActiveRecord::Base
  has_one :category
  has_one :seller

  def price
    "$%.2f" % self[:price]
  end

end

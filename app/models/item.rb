class Item < ActiveRecord::Base
  has_one :category

  def price
    "$%.2f" % self[:price]
  end

end

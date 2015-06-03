class Item < ActiveRecord::Base
  has_and_belongs_to_many :categories
  belongs_to :seller

  def price
    "$%.2f" % self[:price] ||= 0
  end


end

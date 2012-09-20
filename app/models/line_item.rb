class LineItem < ActiveRecord::Base
  attr_accessible :cart, :cart_id, :product, :product_id, :quantity
  belongs_to :product
  belongs_to :cart
  belongs_to :order

  def total_price
  	product.price * quantity
  end
end

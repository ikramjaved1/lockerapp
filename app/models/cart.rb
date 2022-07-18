class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items

  def add_product(product_id)
    current_item = cart_items.find_by(product_id: product_id)
    if current_item
      current_item.increment(:quantity)
    else
      current_item = cart_items.build(product_id: product_id)
    end
    current_item
  end

  # def total_price
  #   cart_items.to_a.sum { |item| item.total_price }
  # end

  def sub_total
    sum = 0
    self.cart_items.each do |cart_item|
     sum+= cart_item.total_price
    end
    return sum
  end
 
end
  
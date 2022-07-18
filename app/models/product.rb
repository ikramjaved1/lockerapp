class Product < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :product_image , dependent: :destroy
  has_many :order_items
  has_many :cart_items, dependent: :destroy
  has_and_belongs_to_many :orders
end

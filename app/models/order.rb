class Order < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :products

  enum order_status: {pending:0, completed:1 ,failed:2}
end



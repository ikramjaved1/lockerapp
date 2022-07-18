class CartsController < ApplicationController
  def show
    @cart = CartItem.all
  end 
end

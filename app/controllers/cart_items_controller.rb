class CartItemsController < ApplicationController
  before_action :set_cart, only: [:index, :create, :show, :update_quantity]
  before_action :set_product, only: [:create]
  before_action :set_cart_item, only: [:update_quantity, :destroy]

  def index
    @cartitems = @cart.cart_items
  end

  def show
    @cartitem = @cart.cart_items
  end

  def new
    @cartitem = CartItem.new
  end

  def create
    @cartitem = @cart.add_product(@product.id)
    if @cartitem.save
      redirect_to cart_item_path(@cart), notice: "product added to cart"
    end 
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    if @cart_item.present?
      @cart_item.destroy
      redirect_to cart_item_path(@cart_item)
    end
  end  

    # def update_quantity
    #   @cart_item.update(quantity: params[:qty])
    #   render json: {
    #     "item-price-#{@cart_item.id}" => @cart_item.total_price,
    #     total_price: @cart.total_price
    #   }
    # end

  def add_quantity
    @cart_item = CartItem.find(params[:id])
    @cart_item.quantity += 1
    @cart_item.save
    redirect_to cart_item_path(@cart_item)
  end
  
  def reduce_quantity
    @cart_item = CartItem.find(params[:id])
    if @cart_item.quantity > 1
      @cart_item.quantity -= 1
    end
    @cart_item.save
    redirect_to cart_item_path(@cart_item)
  end

  private

  def set_cart
    @cart = current_user.cart
  end

  def set_cart_item
   @cart_item = CartItem.find_by_id(params[:id])
  end

  def set_product
    @product = Product.find(params[:id])
    return if @product.present?
  end

end

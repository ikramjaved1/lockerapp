class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :index]
  
  def index
    @products = Product.find_by(params[:id]) 
    @orders = Order.all
  end

  def show
  end

  def new
    @product = Product.find(params[:product_id])
    @order = Order.new
  end

  def create
    @product = Product.find_by(params[:product_id])
    @order = Order.new(order_params)
    @order.user_id = current_user.id
        if @order.save  
          flash[:notice] = 'order created'
          redirect_to order_path(@order)   
        else
          flash[:error] = 'Failed to add order!'
          render :new
        end 
  end

  private

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:final_price, :order_status, :delivered_at, :shipping_address)
    end
end

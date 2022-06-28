class HomesController < ApplicationController
  def index
    @products = Product.all
  end

  def profile
    @user = User.find(params[:id])
    @products=Product.where("user_id=?", current_user.id)
  end

  def switch_role
    @user=User.find(params[:id])
    if @user.buyer?
      @user.seller!
    else
      @user.buyer!
    end
    redirect_to root_path
  end
end

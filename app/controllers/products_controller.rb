class ProductsController < ApplicationController   
    # GET method to get all products from database   
  def index   
    @products = Product.all   
  end   
  
  # GET method to get a product by id   
  def show   
    @product = Product.find(params[:id])   
  end   
  
  # GET method for the new product form   
  def new   
    @product = Product.new   
  end   
  
  # POST method for processing form data   
  def create   
    @product = Product.create(product_params) 
    @product.user_id = current_user.id
    if @product.save   
      flash[:notice] = 'Product added!'   
      redirect_to products_path   
    else   
      flash[:error] = 'Failed to edit product!'   
      render :new   
    end   
  end   
  
  # GET method for editing a product based on id   
  def edit   
    @product = Product.find(params[:id])   
  end   
  
  # PUT method for updating in database a product based on id   
  def update   
    @product = Product.find(params[:id])   
    if @product.update_attributes(product_params)   
      flash[:notice] = 'Product updated!'   
      redirect_to products_path   
    else   
      flash[:error] = 'Failed to edit product!'   
      render :edit   
    end   
  end   
  
  # DELETE method for deleting a product from database based on id   
  def destroy   
    @product = Product.find(params[:id])   
    if @product.delete   
      flash[:notice] = 'Product deleted!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to delete this product!'   
      render :destroy   
    end   
  end   
  
  # we used strong parameters for the validation of params   
  def product_params   
    params.require(:product).permit(:product_name, :price, :description)   
  end   
    
end
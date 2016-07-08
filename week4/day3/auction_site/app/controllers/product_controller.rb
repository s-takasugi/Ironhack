class ProductController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @products = @user.product
  end

  def show
    @user = User.find(params[:user_id])
    @entry = @user.products.new
  end

  def create
    # byebug
    @user = User.find(params[:user_id])
    @product = @user.product.new(
      title: params[:product][:title],
      description: params[:product][:description],
      deadline: params[:product][:deadline])

    if @product.save
      redirect_to action: "index", controller: "product", user_id: @user.id
    else
      render "new"
    end
  end

  def destroy
    #todo create 'destroy' method
  end

  def new
    @user = User.find(params[:user_id])
    @product = Product.new
    #render 'new'
  end
end

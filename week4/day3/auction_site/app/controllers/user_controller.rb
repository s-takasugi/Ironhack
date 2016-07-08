class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    # todo 'unless @user => render 'no_user_found''
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email])
  end

  def destroy
    #todo create 'destroy' method
  end

  def new
    @user = User.new
    #render 'new'
  end

  def home
    render 'home'
  end

end

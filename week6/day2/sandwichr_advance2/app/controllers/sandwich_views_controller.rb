class SandwichViewsController < ApplicationController

  def index
    @sandwiches = Sandwich.all
  end

  def show
    id = params[:id]
    @sandwich = Sandwich.find(id)
  end
end

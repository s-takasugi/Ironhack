class AsciisController < ApplicationController

  def new
    render 'new'
  end

  def create
    @text = params[:asciis][:user_text]
    @input = Artii::Base.new :font => 'standard'
    @output = @input.asciify(@text)
    render 'results'
  end
end

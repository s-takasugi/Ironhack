class LipsumController < ApplicationController
  def new
    render 'new'
  end

  def create
    quotes=[" We will not go quietly into the night! We will not vanish without a fight! We're going to live on, we're going to survive. Today, we celebrate our Independent Day!", "There are many things my father taught me here in this room. He taught me: keep your friends close, but enemies closer.", "The problem is not the problem. The problem is your attitude about the problem. Do you understand?"]
      # quote 1 => 'President Thomas Whitmore' from 'Independence Day'
      # quote 2=> 'Michael Corleone' from 'Godfather: Part II'
      # quote 3=> 'Captain Jack Sparrow' from 'Pirates of the Caribbean: The Curse of the Black Pearl.'

    @user_input_number  = params[:number][:user_number].to_i
    @type = params[:style]
      if @type == 'paragraph'
        @output = quotes[0]*@user_input_number
      elsif @type == 'word'
        @output = quotes[0].split(' ')[0..@user_input_number-1]
      end
    render 'results'
  end
end

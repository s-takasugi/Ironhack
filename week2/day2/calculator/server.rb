# Week2 Day2 Exercise <The Online Calculator>

require "sinatra"
require "sinatra/reloader"
require "./lib/calculator.rb"

get "/" do
  erb(:home)
end

post "/result" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  operation = params[:operation]
    if operation == "addition"
      @result = Calculator.add(first,second)
    end
    if operation == "subtraction"
      @result = Calculator.subtract(first,second)
    end
    if operation == "multiplication"
      @result = Calculator.multiply(first,second)
    end
    if operation == "division"
      @result = Calculator.divide(first,second)
    end
    erb(:result)
end

post "/save" do
  Calculator.save(params[:data])
  redirect to("/")
end

require 'sinatra'
require 'sinatra/reloader'
require './lib/password.rb'
require 'pry'

get '/' do
  erb :home
end

post '/validate' do
  email=params[:email]
  password=params[:password]
  if PasswordChecker.new(email, password).check_password
    redirect to ('/congrats')
  else
    redirect to ('/')
  end
end

get '/congrats' do
  erb :congrats
end

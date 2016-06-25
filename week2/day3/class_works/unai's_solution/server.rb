require 'sinatra'
require 'sinatra/reloader'
require './lib/login_service'
require './lib/user_store'
require "pry"

enable(:sessions)

user_store = UserStore.new :users

get '/login' do
  erb :log_in
end

post '/login' do
  session[:current_user] = {
    username: params[:username],
    password: params[:password]
  }

  redirect to('/profile')
end

get '/signup' do
  erb :sign_up
end

post '/signup' do
  user = {
    username: params[:username],
    password: params[:password]
  }
  user_store.add(user)

  redirect to('/login')
end

post '/logout' do
  session[:current_user] = nil

  redirect to('/login')
end

get '/profile' do
  user = session[:current_user]

  if user && LoginService.new(user, user_store).login
    erb :profile
  else
    redirect to('/login')
  end
end

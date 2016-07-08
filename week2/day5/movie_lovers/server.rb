require 'sinatra'
require 'sinatra/reloader'
require 'imdb'

get '/' do
  erb (:home)
end

post '/search' do # =>same as 'action' from the form
  redirect to ('/result') # => need searched 'word' in URL
end

get '/result' do
  erb (:result)
end

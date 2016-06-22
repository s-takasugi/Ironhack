# the main controller

require 'sinatra'
require 'time'
require 'date'
require 'sinatra/reloader'

get '/' do
'this is my super web app'
end

get '/about' do
	erb :about
end

get '/hi' do
	@name = 'Soy'
	erb :hi
end

get '/time' do
	@current_time = Time.new
	@current_day = "#{DateTime.now.hour}:#{DateTime.now.minute}"
	erb :time
end

get '/fruit' do
	@fruits = %w(oranges lemons apples bananas)
	erb :fruits
end

get '/users/:username' do
	@username = params[:username]
	erb :user
end

get '/ago/:time' do
	@hours_ago = params[:time]
	@time = Time.now
	@time_ago = @time - params[:time].to_i*3600
	erb :ago
end

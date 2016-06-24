require 'sinatra'
require 'sinatra/reloader'

require './lib/models/blog'
require './lib/models/post'

blog = Blog.new

blog.add_post(Post.new("Ironhack", Date.new(2016, 06, 13), "First day of Ironhack was really cool!!", "soy", "coding"))
blog.add_post(Post.new("Coffee", Date.new(2016, 06, 15), "Need more coffee!!!!!", "soy", "Thor!!!"))
blog.add_post(Post.new("Barcelona", Date.new(2016, 06, 14), "Great sunny day today :)", "soy", "travel"))
blog.add_post(Post.new("Brithday", Date.new(2016, 05, 13), "It's my brother's birthday today!!!", "soy", "event"))
blog.add_post(Post.new("Coding", Date.new(2016, 05, 19), "Got my Scuba Diving Licence!!!", "soy", "event"))
blog.add_post(Post.new("Cohort", Date.new(2016, 06, 10), "Met my cohort at the beach :)","soy", "code"))
blog.latest_post

get '/' do
  @posts = blog.posts
  erb (:home)
end

get '/post/:index' do
  index = params[:index].to_i
  if index < blog.posts.size
    @post_to_show = blog.posts[index]
  elsif
    redirect to '/'
  end
  erb (:detail)
end

get '/new_post' do
  erb (:post)
end

post '/form' do
  redirect to '/new_post'
end

post '/add_post' do
  title = params[:title]
  text = params[:text]
  author = params[:author]
  # category = params[:category]
  blog.add_post(Post.new("#{title}", Date.today, "#{text}", "#{author}", "category"))
  blog.latest_post
  redirect to '/'
end

require 'sinatra'
require 'sinatra/reloader'
require 'yaml/store'
require './lib/task'
require './lib/todolist'
require 'pry'

todo_list = TodoList.new("Soy")
todo_list.load_tasks

enable(:sessions)

get '/tasks' do
  @task=todo_list.tasks
  erb(:task_index)
end

post '/create_task' do
  content = params[:content]
  new_task = Task.new(content)
  todo_list.add_task(new_task)
  redirect to '/tasks'
end

get '/new_task' do
  erb(:new_task)
end

get '/complete_task/:id' do
  id=params[:id]
  new_task= todo_list.find_task_by_id(id.to_i)
  new_task.complete!
  redirect to '/tasks'
end

get '/deleted_task/:id' do
  id=params[:id]
  todo_list.delete_task(id.to_i)
  redirect to '/tasks'
end

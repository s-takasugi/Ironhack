# Week2 Day1 Exercise <Sinatra Todo>

require './task'
require 'yaml/store'

class TodoList
	attr_reader :tasks, :user
	def initialize(user)
		@todo_store = YAML::Store.new("./public/tasks.yml")
		@tasks = []
		@user = user
	end

	def add_task(task)
		@tasks.push(task)
	end

	def delete_task(id)
		@tasks.delete_if { |task| task.id == id }
	end

	def find_task_by_id(id)
		@tasks.find { |task| task.id == id }
	end

	def sort_by_created
		@tasks.sort{ |a, b| b.created_at <=> a.created_at}
	end

	def save
		@todo_store.transaction do
			@todo_store[@user] = @tasks
		end
	end
end



todo_list = TodoList.new("Soy")
task = Task.new("Walk the dog")
task2 = Task.new("Buy the milk")
task3 = Task.new("Make my todo list into a web app")
todo_list.save

# todo_list = TodoList.new("Soy")
# todo_list.add_task
puts todo_list.tasks.length
# todolist.add_task(task)
# todolist.add_task(task2)
#
# p todolist.sort_by_created

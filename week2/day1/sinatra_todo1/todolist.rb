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

# Week2 Day1 Exercise <Sinatra Todo>

require './task'

class TodoList
	attr_reader :tasks, :user
	def initialize(user)
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
end



# todolist = TodoList.new("Soy")
# task = Task.new("Walk the dog")
# task2 = Task.new("Buy the milk")
# todolist.add_task(task)
# todolist.add_task(task2)

# p todolist.sort_by_created





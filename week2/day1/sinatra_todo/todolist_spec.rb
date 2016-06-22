# Week2 Day1 Exercise <Sinatra Todo_spec>

require 'rspec'
require './task'
require './todolist'

describe 'TodoList' do
	before :each do
		@todolist = TodoList.new("Soy")
		@task = Task.new("Walk the dog")
	end

	describe '#add_task' do
		it 'should add a task' do
			@todolist.add_task(@task)
			expect(@todolist.tasks.size).to eq(1)
		end
	end

	describe '#delete_task' do
		it 'should delete a task by its id' do
			@todolist.add_task(@task)
			@todolist.delete_task(@task.id)
			expect(@todolist.tasks.size).to eq(0)
		end
	end

	describe '#find_task_by_id' do
		it 'should find task by its id' do
			@todolist.add_task(@task)
			expect(@todolist.find_task_by_id(@task.id)).to eq(@task)
		end
	end

	describe '#sort_by_created' do
		it 'should sort tasks by their creation time' do
			task1 = Task.new("Task1")
			task2 = Task.new("Task2")
			@todolist.add_task(task1)
			@todolist.add_task(task2)
			expect(@todolist.sort_by_created).to eq([task2, task1])
		end
	end
end

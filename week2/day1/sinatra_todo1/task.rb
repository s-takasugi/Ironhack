# Week2 Day1 Exercise <Sinatra Todo>

require 'pry'
require 'time'

class Task
	attr_reader :content, :id, :created_at
	@@current_id = 1
	def initialize(content)
		@content = content
		@id = @@current_id
		@@current_id += 1
		@status = false
		@created_at = Time.new
		@updated_at = nil
	end

	def completed?
		@status
	end

	def complete!
		@status = true
	end

	def make_incomplete!
		@status = false
	end

	def update_content!(content)
		@content = content
		@updated_at = Time.new
	end
end		

# task = Task.new("By the dog")
# puts task.content

# task2 = Task.new("Walk the milk")
# puts task2.content

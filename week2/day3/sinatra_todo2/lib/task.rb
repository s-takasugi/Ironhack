# Week2 Day3 Exercise <Sinatra Todo Part2>

require 'pry'
require 'time'

class Task
	attr_reader :content, :id, :created_at, :status
	@@current_id = 5
	# clear content of '/public/tasks.yml' to set @@current_id = 1
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

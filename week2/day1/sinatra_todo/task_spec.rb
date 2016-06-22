# Week2 Day1 Exercise <Sinatra Todo_spec>

require 'rspec'
require './task'

describe 'Task' do
	describe '#completed?' do
		it 'returns false' do
			result = Task.new('task').completed?
			expect(result).to eq(false)
		end
	end

	describe '#complete!' do
		it 'returns true' do
			result = Task.new('task').complete!
			expect(result).to eq(true)
		end
	end

	describe '#make_incomplete' do
		it 'returns false' do
			result = Task.new('task').make_incomplete!
			expect(result).to eq(false)
		end
	end

	describe 'create_at attribute' do
		it 'creates the time the content was created' do
			result = Task.new('task').created_at.sec
			expect(result).to eq(Time.new.sec)
		end
	end

	describe '#update_content!' do
		it 'updates the task content' do
		 	task = Task.new("Buy the dog")
		 	task.update_content!("Buy the milk") 
		 	expect(task.content).to eq("Buy the milk")
		end
	end
end

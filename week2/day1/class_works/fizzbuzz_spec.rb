require 'rspec'
require './fizzbuzz'

describe 'FizzBuzz' do
	describe '#add' do
		it 'returns 1 for 1' do
			result = FizzBuzz.new.add(1)
			expect(result).to eq(1)
		end

		it "returns 'Fizz!' for 3" do
			result = FizzBuzz.new.add(3)
			expect(result).to eq('Fizz!')
		end

		it "returns 'Buzz!' for 5" do
			result = FizzBuzz.new.add(5)
			expect(result).to eq('Buzz!')
		end

		it "returns 'FizzBuzz!' for 15" do
			result = FizzBuzz.new.add(15)
			expect(result).to eq('FizzBuzz!')
		end
	end
end
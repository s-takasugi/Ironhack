require 'rspec'
require './string_calculator'

describe 'StringCalculator' do # 'StringCalculator'is a class
	describe '#add' do # '#add' is a method
		it 'returns 0 for no numbers' do
			result = StringCalculator.new.add('')
			expect(result).to eq(0)
		end

		it 'retruns 6 for 1,2,3' do
			result = StringCalculator.new.add('1,2,3')
			expect(result).to eq(5)
		end
	end
end

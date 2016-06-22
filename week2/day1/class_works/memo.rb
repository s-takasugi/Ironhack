# week2 day1 memo

# class StringCalculator
# 	def add(number)
# 		split_numbers = number.split(',')
# 		add_numbers = split_numbers.reduce(0){|sum, x| sum += x.to_i}
# 	end

# end

# test = StringCalculator.new

# p test.add("1,2")



require 'rspec'
require 'sinatra_todo'

describe Task do
	subject {described_class.new}

	describe '#eat_t' do
		let {:result} {subject.eat_t(input)}

		contex 'when word has t' do
			let(:input) {'the'}
			let(:expected_output) {'he'}

			it 'deletes the t' do
				expect(result).to eq(expected_output)
			end
		end

		contex 'when word has No t' do
			let(:input){'sunny'}

			it'returns the same word' do
				expecte(result).to eq(input)
			end
		end
	end
end
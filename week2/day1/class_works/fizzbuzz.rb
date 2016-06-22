class FizzBuzz
	def add(number)
		if number % 15 == 0
			"FizzBuzz!"
		elsif number % 3 == 0
			"Fizz!"
		elsif number % 5 == 0
			"Buzz!"
		else
			number
		end
	end
end

test = FizzBuzz.new
puts test.add(3)
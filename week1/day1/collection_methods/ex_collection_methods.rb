# Week1 Day1 Exercise <Collection Methods>

#<Iteration #0: Create an array of homes>

class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
		  @name = name
		  @city = city
		  @capacity = capacity
		  @price = price
	end
end

homes = [
  Home.new("Maria's place", "Barcelona", 3, 91),
  Home.new("Jake's place", "Saltlake City", 7, 62),
  Home.new("Jonannus's place", "Managua", 8, 65),
  Home.new("Flo's place", "Munich", 5, 82),
  Home.new("Nikel's place", "Hanover", 8, 75),
  Home.new("Arian's place", "Bukarest", 10, 72),
  Home.new("Jorge's place", "Valencia", 7, 66),
  Home.new("Tatjana'place", "Hamburg", 5, 68),
  Home.new("Marjon's place", "Amsterdam", 4, 71),
  Home.new("Soy's place", "Tokyo", 4, 52)
]

#<Iteration #1: List of homes>

# display_home = homes.each do |info|
# 	puts "#{info.name} place in #{info.city}\nPrice: $#{info.price}/night Capacity: #{info.capacity}"
# end

#<Iteration #2: Sorting, #3: Filter by city, #4: Average, #5: Name your own price>

puts "Type a number from the options below to see the list of homes at Textbnb!!"
puts "[1] Sort from lower price\n[2] Sort from higher price\n[3] Sort from lower capacity\n[4] Sort frmo higher capacity\n[5] Select a city\n[6] Type a price"

user_input = gets.chomp.to_i

if user_input == 1
	#sorting by price from low to high
	sorted_list_A = homes.sort do |x, y|
		x.price <=> y.price
	end

	sorted_list_display_A = sorted_list_A.each do |info|
		puts "#{info.name}, Price: $#{info.price}/night"
	end

	total_price_A = sorted_list_A.reduce(0.0) do |sum, x|
		sum + x.price
	end
	average_price_A = total_price_A / sorted_list_A.length
	puts "\nThe average price of the above is $#{average_price_A}/night\n\n"

elsif user_input == 2
	#sorting by price from high to low
	sorted_list_B = homes.sort do |x, y|
		y.price <=> x.price
	end

	sorted_list_display_B = sorted_list_B.each do |info|
		puts "#{info.name}, Price: $#{info.price}/night"
	end

	total_price_B = sorted_list_B.reduce(0.0) do |sum, x|
		sum + x.price
	end
	average_price_B = total_price_B / sorted_list_B.length
	puts "\nThe average price of the above is $#{average_price_B}/night\n\n"

elsif user_input == 3
	#sorting by capacity from low to high
	sorted_list_C = homes.sort do |x, y|
		x.capacity <=> y.capacity
	end

	sorted_list_display_C = sorted_list_C.each do |info|
		puts "#{info.name}, Capacity: #{info.capacity}\n\n"
	end

elsif user_input == 4
	#sorting by capacity from high to low
	sorted_list_D = homes.sort do |x, y|
		y.capacity <=> x.capacity
	end

	sorted_list_display_D = sorted_list_D.each do |info|
		puts "#{info.name}, Capacity: #{info.capacity}\n\n"
	end

elsif user_input == 5
	puts "Select and type a city from the options below."
	puts "<Amsterdam> <Barcelona> <Bukarest> <Hamburg> <Hanover>\n<Managua> <Munich> <Saltlake City> <Tokyo> <Valencia>"

	user_input2 = gets.chomp.downcase

	#filtering by city
	filtered_city = homes.select do |selection|
		selection.city.downcase == "#{user_input2}"
	end

	fitered_city_list = filtered_city.each do|info|
		puts "#{info.name} at #{info.city}\nPrice: $#{info.price}/night, Capacity: #{info.capacity}\n\n"
	end

elsif user_input == 6
	puts "Enter a price from a range of $50/night to $100/night"
	user_input3 = gets.chomp.to_i

	users_price = homes.find do |info|
		info.price == user_input3
	end

	if users_price == nil
		puts "Sorry no home for that price!\n\n"

	else
		puts "#{users_price.name} is what you are looking for!\n\n"
	end

else
	puts "Too bad, no such options!!\n\n"

end

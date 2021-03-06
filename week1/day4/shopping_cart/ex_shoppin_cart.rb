# Week1 Day4 Exercise <Shopping cart>

require "pry"

class ShoppingCart
	attr_reader :items
	def initialize
		@items = []
	end

	def add_items_to_cart(item)
		@items << item
	end

	def cost(added_item)

		total = 0
		@items.each do |item|
			added_item.each do |list_item|
				if item == list_item.keys[0]
					total += list_item[list_item.keys[0]]
				end				
			end
		end
		total
		# apple discount
		if @items.include?("apple") == true
			# apple_discount = @items.delete["orange", "grapes", "banana", "watermelon" ].size / 2
			half_apple = @items.select{|x| x = "apple"}.length /2
			apple_price = added_item[:apple]
			apple_discount = half_apple * apple_price

		end
	end
end

# Buy 2 apples and pay just one!
# Buy 3 oranges and pay just 2!
# Buy 4 grapes you get one banana for free if you want!

list_of_fruit = [{:apple  => 10},
	 	  		 {:orange =>  5},
	 	 		 {:grapes => 15},
	 	 		 {:banana => 20},
	 			 {:watermelon => 50}
				]
#need revision!!
#list_of_fruit = {:apple => 10, :orange => 5, ...}

cart = ShoppingCart.new

cart.add_items_to_cart :apple
cart.add_items_to_cart :banana
cart.add_items_to_cart :banana

puts cart.cost(list_of_fruit)

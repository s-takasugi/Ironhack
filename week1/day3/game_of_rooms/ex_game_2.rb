# Week1 Day3 Exercise <A game of rooms>

require "pry"

class Game
	def initialize
		@rooms = []
		@current_room = 1
	end

	def add_room(room)
		@rooms << room
	end

	def start
		puts "Are you ready to start a new game?\n  [ Y ]  [ N ]"
 		user_input = gets.chomp.downcase
  		if user_input == "y"
  			play
  		elsif user_input == "n"
   			puts "\nSmart decision! Come back later :)\n\n"
    		exit
  		end
  	end

  	def play
		@rooms[@current_room].display_message
  		user_input = ""
		while user_input != @rooms[@current_room].exit

		puts "Choose a direction:\n  #{@rooms[@current_room].exit}"
		user_input = gets.chomp.downcase
		end


		@current_room += 1
		if @current_room != @rooms.length
			play
		end
	end
end


class Room
	attr_reader :exit
	def initialize (message, exit)
		@message = message
		@exit = exit
	end

	def display_message
		puts @message
	end
end

# room_0 = Room.new("Are you ready to start a new game?\n  [ Y ]  [ N ]", "n")
room_1 = Room.new("Choose a direction \n  [ N ]  [ E ]  [ W ]", "n")
room_2 = Room.new("Choose a direction \n  [ N ]  [ E ]", "n")
room_3 = Room.new("Choose a direction \n  [ E ]  [ S ]", "e")
room_4 = Room.new("Choose a direction \n  [ W ]  [ S ]", "w")

master_game = Game.new
master_game.add_room(room_1)
master_game.add_room(room_2)
master_game.add_room(room_3)
master_game.add_room(room_4)

master_game.start







# Week1 Day3 Exercise <A game of rooms>

require "pry"

# class Rooms
#   attr_reader(:message)
#   def initialize(message)
#     @message = (message)
#   end
#
#   def display_message
#     puts @message
#   end
# end
#
# # room_0
# room_0 = Rooms.new ("Are you ready to start a new game?\n  [ Y ]  [ N ]")
# room_1 = Rooms.new ("Choose a direction \n  [ N ]  [ E ]  [ W ]")
# room_2 = Rooms.new ("Choose a direction \n  [ N ]  [ E ]")
# room_3 = Rooms.new ("Choose a direction \n  [ E ]  [ S ]")
# room_4 = Rooms.new ("Choose a direction \n  [ W ]  [ S ]")
#
# room_6 = Rooms.new ("Choose a direction \n  [ N ]  [ W ]", ["N", "W"])
#
# room_0
# room_0.display_message

def action_0
puts "Are you ready to start a new game?\n  [ Y ]  [ N ]"
  user_input = gets.chomp.downcase
  if user_input == "y"
    action_1
  elsif user_input == "n"
    puts "\nSmart decision! Come back later :)\n\n"
    exit
  else
    nil
  end
end

# room_1
def action_1
puts "Choose a direction \n  [ N ]  [ E ]  [ W ]"
  user_input = gets.chomp.downcase
  if user_input == "n"
    room_4.display_message #need a command -> to room_4
  elsif user_input == "e"
    room_6.display_message #need a command -> to room_6
  elsif user_input == "w"
    room_2.display_message #need a command -> to room_2
  else
    room_1.display_message #need a command -> to room_1
  end
end

# room_2
def action_2
  user_input = gets.chomp.downcase
    if user_input == "n"
      room_3.display_message # -> to room_3
    elsif user_input == "e"
      room_1.display_message # -> to room_1
    else
      room_2.display_message #need a command
    end

action_0


#
# # room_3
#
#   user_input = gets.chomp.downcase
#     if user_input == "e"
#       #need a command -> to room_4
#     elsif user_input == "s"
#       #need a command -> to room_2
#     else
#       #need a command
#     end
#
# # room_4
#
#   user_input = gets.chomp.downcase
#     if user_input == "w"
#       #need a command -> to room_3
#     elsif user_input == "s"
#       #need a command -> to room_1
#     else
#       #need a command
#     end

# room_5 *with a Monster*
    #puts "Choose a direction \n  [ N ]  [ S ]"
# room5 = Room.new(5)
# puts "Damn!! There is a giant panda-looking monster in a room!!!"
# puts "Choose what to do from the following:"
# puts "[ 1 ] Pick up a sword that is coincidentally laying on the ground and attack the monster!"
# puts "[ 2 ] Try to communicate with the panda-looking monster..."
# puts "[ 3 ] Feed your Sushi lunch."
#   user_input = gets.chomp.to_i
#     if user_input == 1
#       #need a command -> to room_3
#     elsif user_input.downcase == 2
#       #need a command -> to room_1
#     elsif user_input.downcase == 3
#       #need a command -> to room_1
#     else
#       #need a command
#     end
#
# # room_6

#   user_input = gets.chomp.downcase
#     if user_input == "n"
#       #need a command -> to room_3
#     elsif user_input == "w"
#       #need a command -> to room_1
#     else
#       #need a command
#     end

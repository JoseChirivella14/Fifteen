require 'pry'
# class Fifteen
class Fifteen
  def play_game name  #def initialize
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    player_number = []
    computer_number = []
    #end
    player_total = calculate_total (player_number)
    computer_total = calculate_total (computer_number)

    if player_total == 15
      display_numbers player_number, computer_number
      puts "Congratulations! You Won!"
      return 1
    elsif computer_number == 15
      display_numbers player_number, computer_number
      puts "I'm sorry, #{player_name}! I win :D "
      return -1
    end



    puts "Choose a number between 1 and 9"
    player_number1 = gets.chomp.to_i



    until [1,2,3,4,5,6,7,8,9].include?(player_number) do
      puts "Hey. You only can choose a number between 1 and 9. No less no more"
      player_number1 = gets.chomp.to_i
      computer_rand1 = rand(1..9)
      puts "Hey. You only can choose a number between 1 and 9. No less no more"
      player_number2 = gets.chomp.to_i
      until player_number1 == player_number2
        puts "I'm sorry, you already choose that number. Pick another that cannot be #{player_number1}"
        player_number2 =  gets.chomp.to_i
        computer_rand2 = rand(1..9)
        until computer_rand1 == computer_rand2
          computer_rand(1..9)
        end
      end
    end
  end
end

def display_numbers player_number, computer_number
  puts "My cards: #{computer_number}"
  puts "My total: #{calculate_total(computer_number)}"
  puts "Your cards: #{player_number}"
  puts "Your total: #{calculate_total(player_number)}"
end

def player_name
  puts "Hi there. We are going to play 'Fifteen'. But first tell me your name: "
  player_name = gets.chomp
  puts "Great #{player_name}! lets play!!"
end


fifteen = Fifteen.new
fifteen.start
# end

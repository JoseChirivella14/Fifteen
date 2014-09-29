require 'pry'

class Game
  def initialize
    @numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player_choose = []
    @computer_choose = []
  end

  def sum(array)
    array.inject{ |sum, x| sum + x}
  end

  def turn
    puts "hi" #testing 
    @turnboth = [0, 1]
    result = @turnboth.sample
    if result == 1
      player_turn
    else
      computer_turn
    end
  end

  def player_turn
    puts "Choose a number between 1 and 9"
    @player_choose = gets.chomp.to_i
    if numbers.include?(@player_choose) == false
      puts "Hey. You only can choose a number between 1 and 9. No less no more"
      player_turn
    end
    @numbers.delete(@player_choose)
  end

  def score_pla
    player_numbers = @player_choose.combination(3).to_a
    if player_numbers.any? {|array| sum(array) == 15}
      puts "You Win! Lucky bastard"
      exit
    else
      computer_turn
    end
  end

  def computer_turn
    @computer_choose = @numbers.sample
    puts " I pick the number #{@computer_choose}"
    @numbers.delete(@computer_choose)
    computer_turn
  end

  def score_computer
    computer_numbers = @player_choose.combination(3).to_a
    if computer_numbers.any? {|array| sum(array) == 15}
      puts "HAHA I win"
    else
      player_turn
    end
  end

  def start
    game = Game.new
    puts "Hi there. We are going to play 'game'. But first tell me your name: "
    name = gets.chomp
    puts "Great #{name}! lets play!!"
    game.turn
    game.player_turn
    game.computer_turn
  end
end



game = Game.new
game.start

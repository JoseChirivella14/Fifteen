class Fifteen
  def player_name
    puts "Hi there. We are going to play 'Fifteen'. But first tell me your name: "
    player_name = gets.chomp
    puts "Great #{player_name}! lets play!!"
  end

  def play_game name

    player_total = calculate_total (player_numbers)
    computer_total = calculate_total (computer_numbers)

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

    if


  def display_cards player_hand, dealer_hand
  puts "My cards: #{dealer_hand}"
  puts "My total: #{calculate_total(dealer_hand)}"
  puts "Your cards: #{player_hand}"
  puts "Your total: #{calculate_total(player_hand)}"
end

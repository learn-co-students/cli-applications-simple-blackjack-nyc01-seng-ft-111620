require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  poss_numbers = [1,2,3,4,5,6,7,8,9,10,11]
  poss_numbers.shuffle.pop
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
 card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  # binding.pry
  
end

def hit?(num)
  prompt_user
  user_input = get_user_input
  
  if user_input == "h"
    new_total = num + deal_card
    new_total
    elsif user_input == "s"
    new_total = num
    new_total
  else
    invalid_command
    prompt_user
    get_user_input
end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  player_hand = 0
  welcome
  player_hand = hit?(initial_round)
  
  until player_hand > 21
    display_card_total(player_hand)
  player_hand = hit?(player_hand)
  
  
  end
  display_card_total(player_hand)
end_game(player_hand)
end
    

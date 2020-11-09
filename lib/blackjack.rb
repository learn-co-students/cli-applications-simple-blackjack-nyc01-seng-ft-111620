require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(current_card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input

  if user_input != 'h' && user_input != 's'
    invalid_command
    prompt_user
    user_input = get_user_input
  end

  if user_input == 'h'
    new_card = deal_card
    current_card_total += new_card
  elsif user_input == 's'
    current_card_total
  end
  current_card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

# binding.pry

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  # helper methods focus on each individual task to drive game forward

  welcome # welcome user
  user_hand = initial_round # give initial two cards and set total to variable
  card_total = user_hand # user hand is equal to card total to be used moving forward

  until card_total >= 21 # until the card total is 21 or more
    card_total = hit?(card_total) # prompt user to hit or stay
    display_card_total(card_total) # display card total each time
  end
end_game(card_total) # tell user the game is over and what their final score is
end

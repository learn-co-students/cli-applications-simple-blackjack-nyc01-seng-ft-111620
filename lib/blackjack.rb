require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_hand = card_one + card_two
  display_card_total(card_hand)
end

def hit?(total)
  card_total = total
  prompt_user
  user_input = get_user_input
  while user_input != 'h' && user_input != 's' do
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == 'h'
    new_card = deal_card
    card_total += new_card
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    

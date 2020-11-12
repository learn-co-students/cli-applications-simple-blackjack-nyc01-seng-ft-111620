def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  random_number = rand(1..11)
  return random_number
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
     sum = deal_card +
     deal_card
     display_card_total(sum)
     return sum
end

def hit?(num)
  prompt_user
  input = get_user_input
   if input == "s"
    
   elsif input == "h"
    deals = deal_card
    deals
    num += deals
   else
    invalid_command
    prompt_user
    get_user_input
   end
   num
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
   welcome
  user_hand = initial_round #why do we have to constantly reassign these methods as variables and not access them right away?
  card_total = user_hand

  until card_total >= 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
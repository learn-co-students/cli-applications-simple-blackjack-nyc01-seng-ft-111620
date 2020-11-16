def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total_cards)
  # code #display_card_total here
  puts "Your cards add up to #{total_cards}"
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
  c1 = deal_card
  c2 = deal_card
  sum = c1 + c2
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  c = get_user_input
  if c == "h"
    v = deal_card
    card_total += v
    return card_total
  elsif c != 'h' && c != 's'
    invalid_command
    prompt_user
    get_user_input
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  prompt_user
  x = get_user_input
  until hand > 21
    if x == 's'
      prompt_user
      x = get_user_input
    else
      hand += deal_card
      display_card_total(hand)
    end
  end
  end_game(hand)
end

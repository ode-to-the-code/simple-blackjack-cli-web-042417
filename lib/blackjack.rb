require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  x = gets.chomp
  x
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  x = deal_card + deal_card
  display_card_total(x)
  x
end

def hit?(current_total)
  # code hit? here
  prompt_user
  x = get_user_input
    if x == "s"

    elsif x == "h"
      current_total += deal_card
    else
      invalid_command
      prompt_user
    end
    current_total
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
  total = initial_round


  while total < 21
    total = hit?(total)
    display_card_total(total)

  end
end_game(total)
end

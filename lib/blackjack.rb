def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here

end

def initial_round
  # code #initial_round here
  flop = deal_card + deal_card
  display_card_total(flop)
  flop
end

def hit?(total)
  # code hit? here
  prompt_user
  answer = get_user_input
  if answer == 's' || 'h'
    answer == 'h' ?
    total + deal_card : total
  else
    invalid_command
  end
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
  while total <= 21
    total == 21 ?
    end_game(total) : total = hit?(total)
  end
  end_game(total)
end

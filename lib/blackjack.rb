def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user  #prompt
  user_input = get_user_input  #store the value of their 'gets'
  while user_input != "h" && user_input != "s" #whilst does not get h or s
    invalid_command #error
    prompt_user #prompt again
    user_input = get_user_input #reset the value of their gets
  end
  if user_input == "h" #if gets h
    card_total += deal_card #update the card total by adding on a new deal_card
    display_card_total(card_total)
  end
  return card_total # return the card total (outside of everything)
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round #assign the card total to the initial_round
  while card_total < 21 #whilst less than 21
    card_total = hit?(card_total) #continue reassignign card total to hit
  end
 end_game(card_total)
end

require 'pry'
# 1. Build a deck of shuffled cardsâ€¦ maybe you can leverage some old code? *Hint: you may want to add some additional card data!*
# 2. Collect an array of player names by prompting:
#   * **"{n} players so far. Enter a player name, or type 'play':"**
#   * Maybe you can leverage some old code here?
# 3. Upon *"play"*, deal each player a card.
# 4. Find the highest card score dealt (Aces high).
# 5. Find the winning player name, then print out:
#   * **"Winner(s): {name1, name2, â€¦}!"**
def enter_player_name players_name
  puts "Enter a player name"
  players_name.push(gets.chomp)
end

values = %w{2 3 4 5 6 7 8 9 10 J Q K A}
suits = %w{club diamond hearts spades}
deck = []

option = ""
players_name = []

while option != 'play'
  while players_name.length < 2
    enter_player_name players_name
  end
  puts "Countinue Entering player? (y/n)"
  add_player = gets.chomp

  if add_player == 'y'
    enter_player_name players_name
  else
    option = 'play'
  end
end
binding.pry
puts "Let's start game"
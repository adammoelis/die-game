require 'pry'

def roll_dice
  roll = rand(1..6)
  puts "You rolled a #{roll}"
  return roll
end

# Ask player if they want to roll again or hold

def choose_roll_or_hold
  puts "Would you like to roll or hold?"
  choice = gets.chomp.downcase
  while choice != "roll" && choice != "hold" do 
    choice = choose_roll_or_hold
  end
  return choice
end


# Game over
def game_over(score)
    puts "You scored #{score} points"
    return score
end


def play_pig(score = 0)

  choice = choose_roll_or_hold            

  if choice == "roll"
    roll = roll_dice

    if roll == 1
      score = 0
      game_over(score)

    else
      score += roll
      puts "You have #{score} points"
      play_pig(score)
    end
  
  else
    game_over(score)
  end

end

def play_pig__cpu
















end





def play_pig_multiplayer
  player1score = play_pig
  puts "Now player 2's turn"
  player2score = play_pig
  puts "Player 1 scored #{player1score} points."
  puts "Player 2 scored #{player2score} points."

  if player1score > player2score
    puts "Congratulations Player 1!"
  
  elsif player1score == player2score
    puts "Tie game!"

  else
    puts "Congratulations Player 2! This game was rigged for you to win"
  end

end

def play_pig__vs_computer
  player1score = play_pig
  puts "Now it's the computer's turn"
  cpuscore = play_pig__cpu
 






end

play_pig_multiplayer




# if player rolls again, roll 

# if player doesn, 
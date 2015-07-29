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
    puts "Game Over. You scored #{score} points"
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

play_pig




# if player rolls again, roll 

# if player doesn, 
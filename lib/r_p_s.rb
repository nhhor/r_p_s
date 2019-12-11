#!/usr/bin/ruby

# FIRST ATTEMPTS MATCHING EPICODUS TEST
class RPS_ONE
  def wins?(player1, player2)
    if player1 == player2
      puts "draw"
      false
    elsif ((player1 == "rock" && player2 == "scissors") || (player1 == "paper" && player2 == "rock") || (player1 == "scissors" && player2 == "paper"))
      puts "Player 1 wins!"
      true
    else
      puts "Player 1 loses!"
      false
    end
  end
end

# SECOND ATTEMPT WITH OBJECT/ARGUMENT SETUP
class RPS_TWO
  def initialize(player1_choice)
    @player1_choice = player1_choice
  end

  def player1_choice
    @player1_choice
  end
  def wins?(player2)
    if player1_choice == player2
      puts "Draw?!"
      false
    elsif ((player1_choice == "rock" && player2 == "scissors") || (player1_choice == "paper" && player2 == "rock") || (player1_choice == "scissors" && player2 == "paper"))
      puts "Player 1 wins!"
      true
    else
      puts "Player 1 loses!"
      false
    end
  end
end


# REFACTOR WITH BETTER METHODOLOGY
class RPS_THREE

  def initialize(player1_choice)
    @player1_choice = player1_choice
  end

  def player1_choice
    @player1_choice
  end

  def wins_v_computer?()

    if /rock|paper|scissors/i.match?(player1_choice)
    else
      puts " you had a typo..."
      return
    end

    player2 = ["rock", "paper", "scissors"].sample

    puts '#####################################################'
    print " You chose: #{player1_choice}, "
    puts "& the computer chose: #{player2}"

    if player1_choice == player2
      puts "                 It's a draw?!"
      false
    elsif ((player1_choice == "rock" && player2 == "scissors") || (player1_choice == "paper" && player2 == "rock") || (player1_choice == "scissors" && player2 == "paper"))
      puts "                 You WIN!"
      true
    else
      puts "                 You lose..."
      false
    end
    puts '#####################################################'
  end

end

puts "enter rock, paper, or scissors:"
player1_choice = gets.chomp
player1_choice = RPS_THREE.new(player1_choice)
player1_choice.wins_v_computer?()

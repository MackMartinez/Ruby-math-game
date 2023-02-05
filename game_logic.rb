class GameLogic

  def initialize()
  end
  
  def start_game
    puts "----- The game has started -----"
  end

  def show_lives_balance(player1, player2)
    puts "----- CURRENT LIVES LEFT -----"
    puts "P1: #{player1.lives}/3 lives vs P2: #{player2.lives}/3 lives"
  end

  def check_lives_balance (player1, player2)
    if player1.lives == 0
      puts "Player 2 wins with a score of #{player2.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end

    if player2.lives == 0
      puts "Player 1 wins with a score of #{player1.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end
end


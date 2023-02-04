class GameLogic

  def initialize(playersTurn)
    @playersTurn = playersTurn
  end

  def start_game
    puts "----- The game has started -----"
  end

  def show_lives_balance(player1, player2)
    puts "#{player1.name}: #{player1.lives}/3 lives vs #{player2.name}: #{player2.lives}/3 lives"
    puts "----- NEW TURN -----"
  end

  def check_lives_balance (player1, player2)
    if player1.lives = 0
      puts "Player 2 wins with a score of #{player2.lives}/3"
      puts "----- GAME OVER -----"
    end

    if player2.lives = 0
      puts "Player 1 wins with a score of #{player1.lives}/3"
      puts "----- GAME OVER -----"
    end
  end
end


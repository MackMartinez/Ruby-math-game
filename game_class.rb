class Gameloop

  def initialize()
  end

  def start_game
    puts "---The game has started---"
  end

  def show_lives_balance(player1, player2)
    puts "#{player1}: #{player1.lives}/3 vs #{player2}: #{player2.lives}/3"
  end
end


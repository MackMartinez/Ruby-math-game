class Gameloop

  def initialize()
  end

  def start_game
    puts "---The game has started---"
  end

  def show_lives_balance(player1, player2)
    puts "#{player1.name}: #{player1.lives}/3 lives vs #{player2.name}: #{player2.lives}/3 lives"
  end
end


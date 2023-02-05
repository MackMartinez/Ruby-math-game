require "./game_logic.rb"
require "./player_class.rb"
require "./question_class.rb"

class GameLoop

  def initialize(name, gameNum)
    @name = name
    @gameNum = gameNum
  end

  def start_game_loop()

    p1 = Player.new("Player 1", 3)
    p2 = Player.new("Player 2", 3)
    current_player = p1
    mathGame = GameLogic.new()
    
    mathGame.start_game
    mathGame.show_lives_balance(p1, p2)
    
    until (p1.lives == 0.to_i) || (p2.lives == 0.to_i) do
      @gameNum = rand()
      
      
      @gameNum = RandomSumQuestion.new(0, [], 0)
      @gameNum.question_generator(current_player.name)
      @gameNum.playerAns = gets.chomp
      
      @gameNum.check_answer(@gameNum.playerAns, @gameNum.correctAns, current_player)
      case current_player
      when p1
        current_player = p2
      when p2
        current_player = p1
      else
        puts "Setting players turn"
      end
      mathGame.show_lives_balance(p1, p2)
      mathGame.check_lives_balance(p1, p2)

    end
  end
end

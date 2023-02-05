require "./game_logic.rb"
require "./player_class.rb"
require "./question_class.rb"

class GameLoop

  def initialize(name, gameNum)
    @name = name
    @gameNum = gameNum
  end

  def start_game_loop()

    p1 = Player.new("P1", 3)
    p2 = Player.new("P2", 3)
    mathGame = GameLogic.new(p1)
    
    mathGame.start_game
    mathGame.show_lives_balance(p1, p2)
    
    until (p1.lives == 0.to_i) || (p2.lives == 0.to_i) do
      @gameNum = rand()
      
      @gameNum = RandomSumQuestion.new(0, [], 0)
      @gameNum.question_generator(p1)
      
      @gameNum.playerAns = gets.chomp
      
      @gameNum.check_answer(@gameNum.playerAns, @gameNum.correctAns, p1)
      mathGame.show_lives_balance(p1, p2)
      mathGame.check_lives_balance(p1, p2)

      if mathGame.playersTurn == p1
        mathGame.playersTurn = p2
      end

      if mathGame.playersTurn == p2
        mathGame.playersTurn = p1
      end


    end
  end
end

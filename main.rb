require "./game_class.rb"
require "./player_class.rb"
require "./question_class.rb"

p1 = Player.new("P1", 3)
p2 = Player.new("P2", 3)
mathGame = Gameloop.new()


mathGame.start_game
mathGame.show_lives_balance(p1, p2)

question = RandomSumQuestion.new(0, [], 0)
question.question_generator(p1)
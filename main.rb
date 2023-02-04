require "./game_logic.rb"
require "./player_class.rb"
require "./question_class.rb"

p1 = Player.new("P1", 3)
p2 = Player.new("P2", 3)
mathGame = GameLogic.new(p1)


mathGame.start_game
mathGame.show_lives_balance(p1, p2)
q1 = RandomSumQuestion.new(0, [], 0)
q1.question_generator(p1)

q1.playerAns = gets.chomp
puts "Player1 answer: #{q1.playerAns}"
puts "Correct answer: #{q1.correctAns}"

q1.check_answer(q1.playerAns, q1.correctAns, p1)
mathGame.show_lives_balance(p1, p2)

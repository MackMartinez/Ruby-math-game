require "./game_class.rb"
require "./player_class.rb"
require "./question_class.rb"

p1 = Player.new("P1", 3)
p2 = Player.new("P2", 3)
mathGame = Gameloop.new(p1)


mathGame.start_game
mathGame.show_lives_balance(p1, p2)
question1 = RandomSumQuestion.new(0, [], 0)
question1.question_generator(p1)

question1.playerAns = gets.chomp
puts "Player1 answer: #{question1.playerAns}"
puts "Correct answer: #{question1.correctAns}"

question1.check_answer(question1.playerAns, question1.correctAns, p1)
mathGame.show_lives_balance(p1, p2)

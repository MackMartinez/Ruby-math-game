require "./game_class.rb"
require "./player_class.rb"
require "./question_class.rb"

p1 = Player.new("P1")
p2 = Player.new("P2")
mathGame = Gameloop.new()

mathGame.start_game
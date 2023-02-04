class Player
  attr_accessor :name, :lives
  
  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def wrong_answer_statement
    puts "#{@name}: Seriously? No!"
  end

  def right_answer_statement
    puts "#{@name}: YES! You are correct."
  end

end

macky = Player.new("Macky", 3)

=begin
puts "get name"
puts macky.name

puts "get lives"
puts macky.player_lives

puts macky.wrong_answer_statement
puts macky.right_answer_statement
=end
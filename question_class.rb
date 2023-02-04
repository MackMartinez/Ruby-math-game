class RandomSumQuestion
  attr_accessor 

  def initialize()
  end

  def randomNum
    rand(1..20)
  end

  def questionGenerator()
    puts " What does #{self.randomNum} plus #{self.randomNum} equal?"
  end

end

num = RandomSumQuestion.new

puts num.questionGenerator


  

  



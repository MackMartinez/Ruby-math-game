class RandomSumQuestion
  attr_accessor 

  def initialize()
    @userInput = 0
    @ansArr = []
    @correctAnswer = 0
  end

  def randomNum
    rand(1..20)
  end

  def question_Generator()
    @ansArr.push(self.randomNum, self.randomNum)
    @correctAnswer = @ansArr[0] + @ansArr[1]
    puts " What does #{@ansArr[0]} plus #{@ansArr[1]} equal?"
  end

  def check_Answer(userInput,correctAnswer, player)
    if userInput != correctAnswer
      player.numLives -+ 1
    end
  end

end





  

  



class RandomSumQuestion
  attr_accessor :playerAns

  def initialize(playerAns, ansArr, correctAnswer)
    @playerAns = 0
    @ansArr = ansArr
    @correctAnswer = correctAnswer
  end

  def random_Num
    rand(1..20)
  end

  def question_generator(player)
    @ansArr.push(self.random_Num, self.random_Num)
    @correctAnswer = @ansArr[0] + @ansArr[1]
    puts "#{player.name}: What does #{@ansArr[0]} plus #{@ansArr[1]} equal?"
  end

  def check_answer(userInput,correctAnswer, player)
    if userInput != correctAnswer
      player.numLives -+ 1
    end
  end


end





  

  



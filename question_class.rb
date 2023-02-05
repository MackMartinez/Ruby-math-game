class RandomSumQuestion
  attr_accessor :playerAns, :correctAns

  def initialize(playerAns, ansArr, correctAns)
    @playerAns = playerAns
    @correctAns = correctAns
    @ansArr = ansArr
  end

  def random_Num
    rand(1..20)
  end

  def question_generator(player)
    @ansArr.push(self.random_Num, self.random_Num)
    @correctAns = @ansArr[0] + @ansArr[1]
    puts "----- NEW TURN -----"
    puts "#{player}: What does #{@ansArr[0]} plus #{@ansArr[1]} equal?"
  end

  def check_answer(userInput, correctAns, player)
    if playerAns.to_i != correctAns.to_i
      player.lives -= 1
      puts "#{player.name}: Seriously? No!"
    else
    puts "#{player.name}: YES! You are correct."
    end
  end


end





  

  



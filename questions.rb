class Question
  attr_reader :num_1, :num_2, :answer

  def initialize
    @num_1 = rand(1...10)
    @num_2 = rand(1...10)
    @answer = num_1 + num_2
  end 

  def ask_question
    return "What does #{@num_1} + #{@num_2} equal?"
  end 

end 



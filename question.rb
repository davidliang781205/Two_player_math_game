class Question
  def initialize()
    @x = rand(10)
    @y = rand(10)
    @answer = @x + @y
  end

  def correct_answer?(answer)
    @answer == answer
  end

  def output_question
    "What does #{@x} plus #{@y} equal?"
  end

end
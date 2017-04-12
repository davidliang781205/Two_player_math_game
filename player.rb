class Player 
  attr_reader :name, :score, :lives
  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def increment_score
    @score += 1
  end

  def take_lives
    @lives -= 1
  end

  def alive?
    @lives > 0
  end
end
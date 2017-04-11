class Player
  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def increment_score
    @score++
  end

  def take_lives
    @lives--
  end

  def alive?
    @lives <= 0
  end
end
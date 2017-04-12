class Game
  attr_accessor :players
  def initialize(players)
    # @num_players = num_players
    @players = players
    @turn = 0
  end

  # def alive_players
  #   @players.select &alive?
  # end

  def current_player
    players[@turn % players.length]
  end

  def next_turn
    @turn += 1
  end
end
class Game < Player
  def initialize(num_players, turn, current_player)
    @players = []
    @num_players = num_players
    @turn = turn
    @current_player = current_player
  end

  def add_player(name)
    @players << new Player(name)
  end

  def next_turn
    turn++
  end

end
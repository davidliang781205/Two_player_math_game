require_relative 'player'
require_relative 'game'
require_relative 'question'

# Further implementation for multiplayer
# print "How many people are playing? "
# num_players = gets.chomp.to_i

players = []
2.times do |x|
  print "Hello player #{x+1}, what is your name? "
  players << Player.new(gets.chomp)
end

game = Game.new(players)
puts "----- GAME ON -----"

while (players[0].alive? && players[1].alive?) do
  puts "----- NEW TURN -----"
  puts game.current_player.name
  question = Question.new()
  puts question.output_question
  answer = gets.chomp.to_i
  if (question.correct_answer?(answer))
    puts "Right Answer"
    game.current_player.increment_score
    puts "Your score: #{game.current_player.score}.  Your lives: #{game.current_player.lives}/3"
  else
    game.current_player.take_lives
    puts "Wrong Answer"
    puts "Your score: #{game.current_player.score}.  Your lives: #{game.current_player.lives}/3"
  end

  game.next_turn
end

players.each do |p|
  puts "Player: #{p.name} score: #{p.score}."
end
puts "GAME OVER"
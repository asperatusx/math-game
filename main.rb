require_relative 'Player'
require_relative 'Game'
require_relative 'Question'


game = Game.new('player1', 'player2')

loop do
  game.start_turn
end
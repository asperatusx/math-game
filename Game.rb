require_relative 'Player'
require_relative 'Question'

class Game
  attr_reader :player1, :player2

  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @current_player = @player1
  end

  def start_turn
    question = Question.new
    question.ask(@current_player)

    if @current_player.is_alive?
      next_player
    else
      announce_winner
      exit
    end
  end

  def next_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def announce_winner
    puts "#{@current_player.name} is the winner!"
  end

end

newGame = Game.new('player1', 'player2')

loop do
  newGame.start_turn
end
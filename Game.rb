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
      players_score
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

  def players_score
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
    puts "----- NEW TURN -----"
  end

  def announce_winner
    next_player
    puts "----- GAME OVER -----"
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3!"
    puts "Good bye!"
  end
end


class Player 
  attr_reader :name, :lives

  def initialize(name, lives = 3)
    @name = name
    @lives = 3
  end
  
  def lose_life
    @lives -= 1
  end

  def is_alive?
    @lives > 0
  end
end

player1 = Player.new('Jon')
puts player1.name
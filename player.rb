class Player 
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
end

player1 = Player.new('Jon')
puts player1.name
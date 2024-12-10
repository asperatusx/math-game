class Player 
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

player1 = Player.new('Jon')
puts player1.name
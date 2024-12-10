class Question
  attr_reader :question, :answer

  def initialize
    @question
  end

  def ask(player) 
    rand1 = rand(1..20)
    rand2 = rand(1..20)
    @answer = rand1 + rand2
    puts @question = "#{player.name}: What does #{rand1} plus #{rand2} equal?"
    user_input = gets.to_i
    check_answer(user_input, player)
  end

  private

  def check_answer(user_input, player)
    if user_input == answer
      puts "Yes! You are correct."
    else 
      puts "Seriously? No!"
      player.lose_life
    end
  end
end

class Question
  attr_reader :question, :answer

  def initialize
    @question
  end

  def ask 
    rand1 = rand(20)
    rand2 = rand(20)
    @answer = rand1 + rand2
    puts @question = "What does #{rand1} plus #{rand2} equal?"
    user_input = gets.to_i
    check_answer(user_input)
  end

  def check_answer(user_input)
    if user_input == answer
      puts "Yes! You are correct."
    else 
      puts "Seriously? No!"
    end
  end
end

question1 = Question.new
question1.ask

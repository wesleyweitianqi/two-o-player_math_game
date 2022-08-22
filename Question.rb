class Question 
  attr_accessor :num1, :num2
  

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2 
  end

  def ask_question
     "what does #{@num1} plus #{@num2} equal?"
  end

end



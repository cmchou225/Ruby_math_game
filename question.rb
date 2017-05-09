class Question 
  attr_reader :val_a, :val_b
  
  def initialize 
    @val_a = Random.new.rand(20)
    @val_b = Random.new.rand(20)
  end
  
  def question 
    "What is #{val_a} + #{val_b}?"
  end

  def right_answer? (answer)
    answer == val_a + val_b 
  end

  
end
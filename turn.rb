class Turn 
  
  def initialize (player)
    @player = player
  end

  def play 
    q1 = Question.new
    p q1.question
    right_wrong = q1.right_answer?(gets.chomp.to_i)
    response = right_wrong ? 'Brilliant' : 'Oh no! Wrong answer'
    p response
    @player.lose_life if !right_wrong
    
  end

end

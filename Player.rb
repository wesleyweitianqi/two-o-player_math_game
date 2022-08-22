class Player 
  attr_accessor :score, :name
  def self.all
    ObjectSpace.each_object(self).to_a  
  end 

  @@player = 0
  def initialize(player)
    @name = player
    @player = player
    @score = 3
    @@player += 1
  end 

  def lose_pts 
    self.score -= 1
  end 

  def final_score 
    "#{score}/3"
  end 

end


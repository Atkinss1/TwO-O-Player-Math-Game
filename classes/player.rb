class Player
  attr_reader :score, :life

  def initialize(name)
    @name = name
    @score = 0
    @life = 3
  end

  def increment_score
    update_score
  end

  def minus_life
    decrement_life
  end

  private

  def update_score
    @score += 10
  end
  
  def decrement_life
    @life -= 1
  end
  
end
class Player
  attr_accessor :name
  attr_reader :score, :life

  def initialize(name)
    @name = name
    @score = 0
    @life = 3
  end

  def increment_score
    update_score
  end

  private

  def update_score
    @score += 10
  end

end
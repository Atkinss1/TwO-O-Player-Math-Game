
class Game
  include Question

  def initialize
    @answer = 0
  end

  def question(number)
    case number
    when 1
      addition
    when 2
      subraction
    when 3
      multiplication
    when 4
      division
    else
      "Enter a number between 1 & 4."
    end
  end
end


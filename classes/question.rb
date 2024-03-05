module Question
  
  private

  def addition
    integer_one = rand(100)
    integer_two = rand(100)
    "#{integer_one} + #{integer_two}"
  end

  def subraction
    integer_one = rand(100)
    integer_two = rand(100)
    "#{integer_one} - #{integer_two}"
  end

  def multiplication
    integer_one = rand(10)
    integer_two = rand(10)
    "#{integer_one} * #{integer_two}"
  end

  def division
    integer_one = rand(10)
    integer_two = rand(10)
    "#{integer_one} / #{integer_two}"
  end

end

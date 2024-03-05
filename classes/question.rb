module Question

  private

  def addition
    addition = [rand(100), rand(100)]
    question = "What is: #{addition[0]} + #{addition[1]}"
    result = addition.reduce(:+)
    [question, result]
  end

  def subraction
    integer_one = rand(100)
    integer_two = rand(100)
    "What is: #{integer_one} - #{integer_two}"
  end

  def multiplication
    integer_one = rand(10)
    integer_two = rand(10)
    "What is: #{integer_one} * #{integer_two}"
  end

  def division
    integer_one = rand(10)
    integer_two = rand(10)
    "What is: #{integer_one} / #{integer_two}"
  end

end

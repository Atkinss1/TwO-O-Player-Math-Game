module Question

  private

  def addition
    add = [rand(100), rand(100)]
    question = "What is: #{add[0]} + #{add[1]}"
    result = add.reduce(:+)
    [question, result]
  end

  def subtraction
    subtract = [rand(100), rand(100)]
    question = "What is: #{subtract[0]} - #{subtract[1]}"
    result = subtract.reduce(:-)
    [question, result]
  end

  def multiplication
    multiply = [rand(10), rand(10)]
    question = "What is: #{multiply[0]} * #{multiply[1]}"
    result = multiply.reduce(:*)
    [question, result]
  end

  def division
    divide = [rand(10), rand(10)]
    question = "What is: #{divide[0]} / #{divide[1]}"
    result = divide.reduce(:/)
    [question, result]
  end

end

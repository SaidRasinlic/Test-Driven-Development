class Solver
  def factorial(number)
    raise RangeError, 'Number should not be negative' if number.negative?
    return 1 if number.zero?

    number * factorial(number - 1)
  end
end

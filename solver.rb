class Solver
  def factorial(number)
    raise RangeError, 'Number should not be negative' if number.negative?
    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 15).zero?

    return 'fizz' if (number % 3).zero?

    return 'buzz' if (number % 5).zero?

    number.to_s
  end
end

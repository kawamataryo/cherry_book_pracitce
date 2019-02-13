class FizzBuzz
  def check(num)
    return "FizzBuzz" if isFizz(num) && isBuzz(num)
    return "Fizz" if isFizz(num)
    return "Buzz" if isBuzz(num)
    num
  end

  def isFizz(num)
    num % 3 == 0
  end

  def isBuzz(num)
    num % 5 == 0
  end

end

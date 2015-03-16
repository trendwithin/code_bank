class NthFibonacci
  attr_reader :n
  def initialize(num)
    @n = num
  end

  def fib
   basecase = [0, 1]
   (1...n).each { basecase.push(basecase.last(2).inject(:+)) }
   basecase
  end
end

require 'nthfibonacci'
require 'minitest/autorun'

class NthFibonacciTest < Minitest::Test
  def test_first_value_is_correct
    nf = NthFibonacci.new(1)
    assert_equal [0, 1], nf.fib
  end

  def test_first_two_values
    nf = NthFibonacci.new(2)
    assert_equal [0, 1, 1], nf.fib
  end

  def test_first_three_values
    nf = NthFibonacci.new(3)
    assert_equal [0, 1, 1, 2], nf.fib
  end

  def test_first_30
    expected = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610,
                987, 1597, 2584, 4181, 6765, 10946, 17711, 28657,
                46368, 75025, 121393, 196418, 317811, 514229, 832040]
    nf = NthFibonacci.new(30)
    assert_equal expected, nf.fib
  end
end

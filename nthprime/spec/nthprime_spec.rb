#require 'minitest/spec'
require 'minitest/autorun'
require 'nthprime'
class NthprimeTest < MiniTest::Test
  def test_primes_to_ten
    expected = [2, 3, 5, 7]
    assert_equal expected, Nthprime.new(10).primes
  end

  def test_primes_to_20
    expected = [2, 3, 5, 7, 11, 13, 17, 19]
    assert_equal expected, Nthprime.new(20).primes
  end

  def test_not_primes_to_20
    expected = [4, 6, 8, 10, 12, 14, 18, 20]
    refute_equal expected, Nthprime.new(20).primes
  end
end

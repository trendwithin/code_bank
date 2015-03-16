class Nthprime
  attr_reader :n
  def initialize(n)
    @n = n
  end

  def primes
    primes = [nil, nil, *2..n]
    (2..Math.sqrt(n)).each do |i|
      (i**2..n).step(i) { |j| primes[j] = nil } if primes[i]
    end
    primes.compact
  end
end

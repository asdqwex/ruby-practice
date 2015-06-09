####The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
####Find the sum of all the primes below two million.

require 'prime'

primes = []

1.upto(2000000) do |n|
    if n.prime?
        primes.push(n)
    end
end

answer = primes.inject(:+)

puts answer

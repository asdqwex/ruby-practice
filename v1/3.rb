####3. The prime factors of 13195 are 5, 7, 13 and 29.
####What is the largest prime factor of the number 600851475143 ?
require 'prime'

out = Prime.prime_division(600851475143)
puts out.max[0]

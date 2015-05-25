puts '##########################################################'
puts 'euler #3 - The prime factors of 13195 are 5, 7, 13 and 29.'
puts 'What is the largest prime factor of the number 600851475143 ?'
puts '##########################################################'
puts 'What is the largest prime factor of x'
puts '##########################################################'
puts 'enter a number for x:'
a = gets.to_i
puts '##########################################################'

require 'prime'

def primeFactors (n)
    return Prime.prime_division(n) 
end

puts 'The largest prime factor of x is: '+a.to_s
puts primeFactors(a)
puts '##########################################################'
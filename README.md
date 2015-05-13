####If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
####Find the sum of all the multiples of 3 or 5 below 1000.

    total = 0
    
    (1..1000).each do |n| 
        if n % 3 == 0
            total += n
         end
        if n %5 == 0
            total += n
        end
    end
            
    puts total
    
####Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
####1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
####By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

    require 'prime'
    
    last = 1
    current = 2
    
    results = []
    
    while current < 4000000
    	x = current + last 
    	if x.prime?
    		results.push(x)
    	end
    	last = current 
    	current = x
    end
    
    total = results.inject(:+)
    
    puts total

####The prime factors of 13195 are 5, 7, 13 and 29.
####What is the largest prime factor of the number 600851475143 ?

    out = Prime.prime_division(600851475143) 
    puts out

####A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
####Find the largest palindrome made from the product of two 3-digit numbers.

    results = []
    
    (1..999).each do |x|
    	(1..999).each do |y|
    		out = x * y 
    		rev = out.to_s.reverse.to_i
    		if out == rev
    			results.push(out)
    		end
    	end
    end
    puts results.max

####2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
####What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
    
    x = 0 
    while true do
    	x += 1
    	if x % 1 == 0 and x % 2 == 0 and x % 3 == 0 and x % 4 == 0 and x % 5 == 0 and x % 6 == 0 and x % 7 == 0 and x % 8 == 0 and x % 9 == 0 and x % 10 == 0 and x % 11 == 0 and x % 12 == 0 and x % 13 == 0 and      % 14 == 0 and x % 15 == 0 and x % 16 == 0 and x % 17 == 0 and x % 18 == 0 and x % 19 == 0 and x % 20 == 0 
    		puts x
    		break
    	end
    end

####Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

    sum = 0
    sumSq = 0
    (1..100).each do |n|
    	sum += n
    	sq = n * n
    	sumSq += sq
    end
    sqSum = sum * sum
    out = sqSum - sumSq
    puts out 

####
####What is the 10 001st prime number?

require 'prime'
x = 0
primes = [] 
while true do
	x += 1
	if x.prime?
		primes.push(x)
	end
	break if primes.length == 10001
end
answer = primes.pop
puts answer
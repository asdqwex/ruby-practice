####7. What is the 10 001st prime number?

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

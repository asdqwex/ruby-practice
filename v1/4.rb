####4. A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
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

####6. Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

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
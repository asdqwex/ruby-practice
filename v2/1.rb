puts '##########################################################'
puts 'euler #1 -  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.'
puts 'Find the sum of all the multiples of 3 or 5 below 1000.'
puts '##########################################################'
puts 'Find the sum of all the multiples of 3 or 5 below x.'
puts '##########################################################'
puts 'enter a number for x:'
a = gets
puts '##########################################################'

def sumOfNaturalNumbersBelow (n)
    total = 0
    
    (1..n).each do |n| 
        if n % 3 == 0 || n % 5 == 0
            total += n
         end
    end
            
    return total
end

puts 'The sum of all the multiples of 3 or 5 below '+a
puts sumOfNaturalNumbersBelow(a.to_i)
puts '##########################################################'
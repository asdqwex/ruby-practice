puts '##########################################################'
puts 'euler #4 - A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.'
puts 'Find the largest palindrome made from the product of two 3-digit numbers.'
puts '##########################################################'
puts 'Find the largest palindrome made from the product of two x-digit numbers.'
puts '##########################################################'
puts 'enter a number for x:'
a = gets.to_i
puts '##########################################################'

def findLargePal (n)
    lower = []
    upper = []

    1.upto(n) do |n|
        if lower.length < 1
            lower.push(1)
        else
            lower.push(0)
        end 
        upper.push(9) 
    end

    result = 0

    (lower.join.to_i..upper.join.to_i).each do |x|
        (lower.join.to_i..upper.join.to_i).each do |y|
            out = x * y 
            rev = out.to_s.reverse.to_i
            if out == rev && out > result
                result = out
            end
        end
    end
    puts result
end

puts 'Find the largest palindrome made from the product of two x-digit numbers. Where x is: '+a.to_s
puts findLargePal(a)
puts '##########################################################' 
####A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
####a^2 + b^2 = c^2
####
####For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
####
####There exists exactly one Pythagorean triplet for which a + b + c = 1000.
####Find the product abc.

for a in (1..500)
  for b in (a ..500)
    for c in (b..500)
      if a**2 + b**2 == c**2 and a+b+c == 1000
        puts a*b*c
      end
    end
  end
end

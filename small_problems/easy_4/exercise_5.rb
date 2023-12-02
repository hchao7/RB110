=begin
Write a method that searches for all multiples of 3 or 5 that lie 
between 1 and some other number, and then computes the sum of those 
multiples. 
For instance, if the supplied number is 20, the result should be 98
(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
You may assume that the number passed in is an integer greater than 1.

# PROBLEM
- Input: A number greater than 1
- Output: 
  Sum of all of multiples of 3 and 5 in between
  1 and the number
- Requirements:
  Gather all multiples
  One for 3, another for 5

# EXAMPLE
  multisum(3) == 3
  3
  multisum(5) == 8
  3 5
  multisum(10) == 33
  3 5 6 9 10
  multisum(1000) == 234168

# DATA STRUCT
# ALGORITHM
  WHILE Iterate through the integers at the same time
   Multiple of 3 = integer * 3
    Add to array if not included
   Multiple of 5 = integer * 5
    Add to array if not included AND < than number
  END  
=end
# CODE

=begin
# My Solution
def multisum(num)
  multiples = []
  iterations_num = num/3
  iterations_num.times do |iterations|
    iterations += 1
    multiples.push(iterations * 3)
    multiples.push(iterations * 5) if iterations <= num/5
  end
  multiples.uniq!
  multiples.sum
end 
=end

# Further Exploration
=begin
Investigate Enumerable.reduce. How might this method be useful in 
solving this problem? (Note that Enumerable methods are available 
when working with Arrays.) Try writing such a solution. 
Which is clearer? Which is more succinct?
=end

def multiple?(product, num)
  (product >= num) && (product%num == 0)
end

def multisum(max_value)
  (1..max_value).inject(0) do |sum, n|
    if multiple?(n, 3) || multiple?(n, 5)
      sum + n
    else
      sum
    end
  end
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
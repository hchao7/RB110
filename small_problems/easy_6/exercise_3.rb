=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) 
such that the first 2 numbers are 1 by definition, and each subsequent number 
is the sum of the two previous numbers. This series appears throughout the 
natural world.
Computationally, the Fibonacci series is a very simple series, but the 
results grow at an incredibly rapid rate. For example, the 100th Fibonacci 
number is 354,224,848,179,261,915,075 -- that's enormous, especially 
considering that it takes 6 iterations before it generates the first 2 digit number.
Write a method that calculates and returns the index of the first Fibonacci number 
that has the number of digits specified as an argument. (The first Fibonacci number 
has index 1.)

# PROBLEM
- Input:
  1. Num - a num that represents a number of digits 
- Output:
  1. Returns index of first Fib num with the # of digits specified as an arg
- Requirements: 
  1. Fibonacci series: 1, 1, 2, 3, 5, 8, 13, 21, ...
  2. First 2 numbers = 1 & 1
  3. Subsequent num = sum of previous 2
  4. 1 + 1 > 2, 2 + 3 > 5, 3 + 5 > 8

# EXAMPLES
1, 1, 2, 3, 5, 8, 13, 21, ...
1 + 1 > 2, 2 + 3 > 5, 3 + 5 > 8            index: 1 2 3 4 5 6 7  8  9  10 11 12
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

arg of 1 -> fibonacci num >= 10^0
arg of 2 -> fibonacci num >= 10^1
arg of 3  -> fibonacci num >= 10^2
# DATA STRUCTURES

# ALGORITHM
1. Initialize digits
2. Loop: Calculate fibonacci numbers
  3. Add each fibonacci number to an array
4. Break out of loop when number of 
   digits in fibonacci number matches num_of_digit
   
Loop: Calculate fibonacci numbers
1. Initialize fib_array with 1st fibonacci num
2. While (fib_array[-1] < 10**arg)
3.  If fib_array.size == 1
       fib_array << 1
    else 
       fib_array << fib_array[-2] + fib_array[-1]
    end 
4. Return fib_array.size

# CODE
=end

def find_fibonacci_index_by_length(digits)
  fib_array = [1]
  num_of_places = digits-1
  while fib_array[-1] < (10**num_of_places)
    if fib_array.size == 1
      fib_array << 1
    else
      fib_array << fib_array[-2] + fib_array[-1]
    end
  end
  fib_array.size()
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
      
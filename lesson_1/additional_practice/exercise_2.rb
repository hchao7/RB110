=begin
Add up all of the ages from the Munster family hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
           "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# PROBLEM
- Input: Munster family hash
- Output: Sum of all ages
- Requirements:
  - All the values in the hash

- EXAMPLES
- "Herman" => 32, "Lily" => 30
- [32] + [30] = 62 yrs

- DATA STRUCTURE
- ALGORITHM
  - Get an array of all values using #values
  - sum method on the array
=end

# CODE

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Solution 1
puts ages.values.sum

# Solution 2
puts ages.values.reduce(:+)


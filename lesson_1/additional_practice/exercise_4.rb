=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
				 "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# PROBLEM
- Input: hash
- Output: minimum of the values in the hash
- Requirements:

# EXAMPLE
"Herman" => 32, "Lily" => 30
min = 30

# DATA STRUCTURES

# ALGORITHM
1. array of values from hash
1. minimum value in the array

# CODE
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
				 "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
min_age = ages.values.min
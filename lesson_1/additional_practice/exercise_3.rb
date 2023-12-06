=begin
Remove people with age 100 and greater

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# PROBLEM
- Input: Hash > ages[name] = age
- Output: Hash without people age 100 or greater
- Requirements

# EXAMPLES
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages = { "Herman" => 32, "Lily" => 30, "Eddie" => 10 }

# DATA STRUCTURE
# Hash > ages[name] = age

# ALGORITHM
- Need to access ages, aka VALUES
- Delete KEY-VALUE pair according to the VALUE
- #reject: A method that will allow me to delete values based on a condition
  - Reject if fulfills conditions
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages = ages.reject do |key, value|
  value > 100
end
puts ages
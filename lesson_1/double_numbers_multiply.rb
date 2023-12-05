def multiply(numbers, multiplier)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= multiplier
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

p multiply([1, 4, 3, 7, 2, 6], 3)
=begin
Write a method that takes one argument, a positive integer, 
and returns a list of the digits in the number.

# PROBLEM
- Input:
  A positive integer
- Output: 
  A list of digits in the number
- Requirements: 

# EXAMPLES
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# DATA STRUCTURE
digit_list(444) == [4, 4, 4] 
444 -> '444' -> ['4', '4', '4']

# ALGORITHM
# Separate the digits
# Convert to a string > to.s
# Iterate through each char > each with object ([])
# Convert each char to a number > to.i
# Append to []

# CODE
=end 

def digit_list(numbers)
  string_number = numbers.to_s
  digit_array = []
  string_number.each_char do |char|
    digit_array << char.to_i
  end 
  digit_array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

counter = 0

# LOOP 1
loop do
  # Finished looping through all the leads
  break if counter == mailing_campaign_leads.size
  
  # full_name = 'Emma Lopez'
  full_name = mailing_campaign_leads[counter][:name]

  # Split first name > 
  # names = ['Emma', 'Lopez']
  names = full_name.split

  names_counter = 0
  loop do
    # Finish looping after first, last
    break if names_counter == names.size
    # name = 'Emma'
    name = names[names_counter]

    # Capitalize "Emma" > "Emma"
    names[names_counter] = name.capitalize
    
    # Next
    names_counter += 1
  end

  # Capitalized > "Emma Lopez"
  capitalized_full_name = names.join(' ')

  # name: "Emma Lopez"
  mailing_campaign_leads[counter][:name] = capitalized_full_name
  
  counter += 1
end

usable_leads = []
counter = 0

loop do
  # Finished looping through all the leads
  break if counter == mailing_campaign_leads.size
  last_login = mailing_campaign_leads[counter][:days_since_login]
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]

  if last_login < 60 && subscribed_to_list
    # add all lost_logins < 60 & true = subscribed to list to usable leads
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end

# Function 1:
  # Reformat names to 'First Last'
# Function 2: hash entry of those
  # With lost_logins < 60 & subscribed_to_list == true to usable leads

  mailing_campaign_leads = [
    {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
    {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
    {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
    {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
  ]
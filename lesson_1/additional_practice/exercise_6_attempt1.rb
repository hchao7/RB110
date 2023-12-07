statement = "The Flintstones Rock"
#Create a hash that expresses the frequency with which each 
#letter occurs in this string:

Hashie = Hash.new(0)
statement.gsub!(/[^a-zA-Z]/, '')
statement.each_char do |char| 
  Hashie[char] += 1
end
puts Hashie
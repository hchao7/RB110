statement = "The Flintstones Rock"
statement.gsub!(/[^a-zA-Z]/, '')
hash = statement.chars.each_with_object({}) do |char, hash|
	if hash.key?(char)
		hash[char] += 1
	else
		hash[char] = 1
	end
end

puts hash



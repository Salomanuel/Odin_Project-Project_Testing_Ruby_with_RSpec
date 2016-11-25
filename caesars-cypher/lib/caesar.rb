class CaesarCypher
 def caesar(string, length=5)
	alphabet      = ('a'..'z').to_a
	downcase      = ("a".."z").to_a
	upcase        = ("A".."Z").to_a
	alphabet_size = upcase.length
	result = []
	

	return string.split("").map do |char|
		case
		when char =~ /!|\.|,|:|\s/ then char #puts "punct"
		when char == char.upcase
			# puts "upcase"
			char_index = upcase.index(char)
			if (char_index + length ) > alphabet_size
				  char = upcase[((char_index + length) - alphabet_size)]
			else
				  char = upcase[  char_index + length]
			end
		when char == char.downcase
			# puts "downcase"
			char_index = downcase.index(char)
			if (char_index + length ) > alphabet_size
				char = downcase[((char_index + length) - alphabet_size)]
			else
				char = downcase[  char_index + length]
			end
		end
	end.join
end

end


 	# string.downcase.split("").each do |char|
 	# 	if char == " " or char == "!"
 	# 		new_char = char
 	# 	elsif (alphabet.index(char)+length) > alphabet.length
 	# 		new_char = alphabet[(alphabet.index(char)+length) - alphabet.length]
 	# 	else
 	# 		new_char = alphabet[alphabet.index(char)+length]	
 	# 	end
 	# 	result.push new_char
 	# end

 	# #case size
 	# string.split("").each_with_index do |char, j|
 	#   if char == " " or char == "!"
 	#   elsif char == char.upcase
 	#   	result[j] = result[j].upcase
 	#   end
 	# end

 	# return result.join

#  end
# end

# uoo = CaesarCypher.new
# puts uoo.caesar("abba")

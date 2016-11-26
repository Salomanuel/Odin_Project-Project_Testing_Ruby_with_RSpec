# FIND A WAY TO RUN TESTS TO BOTH CAESAR AND CAESAR2

class CaesarCypherNew
	def caesar(string, length=5)
		downcase      = ("a".."z").to_a
		upcase        = ("A".."Z").to_a
		alphabet_size = upcase.length		

		return string.split("").map do |char|
			case
			when char =~ /!|\.|,|:|\s/ then char
			when char == char.upcase
				char_index = upcase.index(char)
				if (char_index + length ) > alphabet_size
					  char = upcase[((char_index + length) - alphabet_size)]
				else
					  char = upcase[  char_index + length]
				end
			when char == char.downcase
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
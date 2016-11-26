 #caesar_cipher("What a string!", 5)
 #  => "Bmfy f xywnsl!"

class CaesarCypher
 def caesar(string, length=5)
	alphabet = ('a'..'z').to_a
	result = []

 	string.downcase.split("").each do |char|
 		if char == " " or char == "!"
 			new_char = char
 		elsif (alphabet.index(char)+length) > alphabet.length
 			new_char = alphabet[(alphabet.index(char)+length) - alphabet.length]
 		else
 			new_char = alphabet[alphabet.index(char)+length]	
 		end
 		result.push new_char
 	end

 	#case size
 	string.split("").each_with_index do |char, j|
 	  if char == " " or char == "!"
 	  elsif char == char.upcase
 	  	result[j] = result[j].upcase
 	  end
 	end

 	return result.join

 end
end

#puts caesar("AaAA")
#puts caesar("What")
#puts caesar("ciaoz", 5)
# puts caesar("What a string!", 5)



=begin
text.each do |char|
 		old_value = (char.ord() + length)
 		new_value.push old_value.chr
 	end
=end
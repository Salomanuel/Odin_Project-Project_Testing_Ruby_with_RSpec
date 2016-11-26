def substrings(words, array)
result = {}													#IT DOESN'T HANDLE 
	words.split(/[\s']/).each do |word|
		word = word.gsub(/,/, "").downcase
		array.each do |lemma|						#LACKING OR MULTIPLE SPACES
			if lemma.gsub(/[#{word}]/, '') == ''
				result[lemma] += 1 if  result.has_key?(lemma)
				result[lemma]  = 1 if !result.has_key?(lemma)
			end
		end
	end
	return Hash[result.sort]
end
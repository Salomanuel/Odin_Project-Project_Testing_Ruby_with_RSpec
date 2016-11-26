def wordcounter(text)
	dict = {}
	text.split(" ").each do |word|
		if !dict.has_key?(word)
			dict[word] = 1
		else 
			dict[word] += 1
		end
	end
	return dict
	# dict.each{|key, value| puts "#{key} #{value}"}
end

# text = "the rain in Spain falls mainly on the plain"
# puts wordcounter(text)
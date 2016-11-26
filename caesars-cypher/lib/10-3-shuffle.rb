def shuffle(input)
	randa = []
	while input.length > 0 do
		dice = rand(input.length)
		randa.push input[dice]
		input.delete_at(dice)
	end
	return randa
end



text = "Now that you’ve finished your new sorting algorithm, how
about the opposite? Write a shuffle method that takes an array and
returns a totally shuffled version. As always, you’ll want to test it,
but testing this one is trickier: How can you test to make sure you
are getting a perfect shuffle? What would you even say a perfect
shuffle would be? Now test for it."

#puts shuffle([1,2,3,4,5])
# puts shuffle(text.split(' ')).join(", ")#.length
# puts text.split("")#.length
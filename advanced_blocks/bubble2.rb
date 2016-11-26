def bubble_sort(array)
	array.each do
		array.each_index do |j|
			if (j + 1) < array.length
				if array[j] > array[j+1]
					array.insert((j+1), array.delete_at(j))
				end
			end
		end
	end
	return array
end

def bubble_sort_by(array)
	yield(array) > 0 ? (sort |= true) : (sort |= false)
	#puts "#{array.join(" ")} #{sort}" 
	case sort
		when true  then return bubble_sort(array).join(" ")
		when false then return bubble_sort(array).reverse.join(" ")
		else 						return array
	end
end

#puts bubble_sort([4,3,78,2,0,2])
#puts bubble_sort([6,5,3,1,8,7,2,4])

puts bubble_sort_by(["hi", "hello", "hey"]) { |left, right| left.length - right.length }
puts bubble_sort_by(["hi", "hello", "hey"]) { |left, right| left.length + right.length }
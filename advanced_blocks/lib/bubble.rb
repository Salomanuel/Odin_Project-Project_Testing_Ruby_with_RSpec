def bubble_sort(array)
	i = 0
	until i == array.length-1
		if array[i] > array[i+1]
			array[i+1], array[i] = array[i], array[i+1]
			i  = 0
		else
			i += 1	
		end
	end
	return array
end
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

def bubble_sort_by(array)
	yield(array) > 0 ? (reverse ||= false) : (reverse ||= true)
	case(reverse)
	when true  then return bubble_sort(array)
	when false then return bubble_sort(array).reverse
	else
		return array
	end
end
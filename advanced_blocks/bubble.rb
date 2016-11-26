=begin
Now create a similar method called #bubble_sort_by 
which sorts an array but accepts a block. 

The block should take two arguments which represent 
the two elements currently being compared. 

Expect that the block's return will be similar to 
the spaceship operator you learned about before 
-- 
if the result of the block is negative, 
the element on the left is "smaller" than the element 
on the right. 
0 means they are equal. 
A positive result means the left element is greater. 
Use this to sort your array.

    > bubble_sort_by(["hi","hello","hey"]) do |left,right|
    >   left.length - right.length
    > end
    => ["hi", "hey", "hello"]

=end

def bubble_sort(nums, rev=0)
nums.each do
	nums.each_index do |i|
		if i < nums.length-1
			#puts "#{nums[i]} #{nums[i+1]}"
			if rev == 1				#CONTROLLING THE ORDER
				nums[i], nums[i+1] = nums[i+1], nums[i] if nums[i] < nums[i+1]
			else
				nums[i], nums[i+1] = nums[i+1], nums[i] if nums[i] > nums[i+1]
			end
		end
	end
end
	return nums.join(", ")
end

#puts bubble_sort([3,2,1])
#puts bubble_sort([4,3,78,2,0,2])



def bubble_sort_by(nums)
	spaceship = yield(nums[0], nums[-1])
	#puts "#{nums[0]}, #{nums[-1]}, #{spaceship}"
case
	when spaceship > 0 then	bubble_sort(nums)
	when spaceship < 0 then	bubble_sort(nums, 1)
	else 							 		 	return nums.join(", ")
end 

end

puts bubble_sort_by(["hi", "hello", "hey"]) { |left, right| 
																left.length - right.length }
																#right.length - left.length }
#puts bubble_sort_by(["hi", "hello", "hey"]) do |left,right|
#	left.length - right.length
#end





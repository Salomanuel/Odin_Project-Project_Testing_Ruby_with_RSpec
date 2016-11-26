def bubble_sort_by(array) 
  counter = array.size - 1
  
#puts array.join(", ")
#puts yield("hi", "hello")# < 0

#=begin
  while counter > 0
    1.upto(counter) do |number|
      if yield(array[number - 1], array[number]) < 0
        array[number - 1], array[number] = array[number], array[number - 1]
      end
    end
    counter -= 1
  end
#=end
  return array.join(", ")
end

# bubble_sort([4, 3, 78, 2, 0, 2])
# => [0, 2, 2, 3, 4, 78]

puts bubble_sort_by(["hi","hello","hey"]) { |left, right| right.length - left.length}
# => ["hello", "hey", "hi"]
# bubble_sort_by(["hi","hello","hey"]) { |left, right| right.length - left.length }
# => ["hi", "hey", "hello"]
ark = %w(cat dog pig goat)
#puts ark.map { |animal| animal.upcase}
#puts ark
arr = (1..5).to_a
arr.each_index{ |x| arr[x] = -arr[x] }
arr.each{ |x| x = -x }
#arr.map! { |x| x = -x }
#puts arr.join(", ")
#puts (0..100).map {|x| -x}.join(", ")
arr2 = %w(a b c d)
arr2.each_with_index.map do |letter, idx|
	"#{letter.capitalize} is in position #{idx + 1}"
end
#puts arr2
ark2 = ark.each_with_index.map do |animal, id|
	id.even? ? animal : animal.upcase.reverse
end
#puts ark2.join(" * ")
#puts [1,'a',2,'dog','cat',5,6].select{ |x| x.class==String}.join(", ")

val = [1,3,5,7].inject(0) { |total, num| total += num }
#puts val
min_num = nil
numi = [65,3,100,42,-7]
numi.each do |num|
	min_num = num if min_num == nil || min_num > num
end
#puts min_num

min_answer = numi.inject do |min_num, num|
	min_num = min_num > num ? num : min_num
end

puts min_answer


=begin
arr = (1..5).to_a

for x in 0..arr.length-1
	arr[x] = -arr[x]
end
brr = arr.collect { |x| -x }
puts arr.join(", ")
puts brr.join(", ")
=end
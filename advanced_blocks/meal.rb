def eat(meal, &consume) 
	#meal.each { |food| yield(food)} if block_given?
	meal.each { |food| consume.call(food)} if consume
	"delicious!" 
end

puts eat(['cheese'])

puts eat(['cheese', 'steak', 'wine']) { |food| 
	puts "mmmm, #{food}!"
}
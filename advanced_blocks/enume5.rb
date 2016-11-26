arra = [-5,10,15,-2]
#puts arra.select(&:positive?).join(", ")
#puts ["first", "middle", "last"].reduce { |str,val| "#{str}, #{val}"}
#puts [-1,0,1].select {|num| num.positive?}
#puts [-1,0,1].select(&:positive?)

module MyEnumerable
	def my_reduce(acc, operator = nil, &block)
		raise ArgumentError, 'both operator and actual block given' if operator and block
		raise ArgumentError, 'either operator or block must be given' unless operator or block
		block = block || -> (acc, value) {acc.send(operator, value)}

		each {|value| acc=block.call(acc,value)}
		acc
	end

	def simple_reduce(acc)
		each do |value|
			acc = yield(acc, value)
		end
		acc
	end

	def my_map(operator = nil, &block)
		raise ArgumentError, 'both operator and actual block given' if operator and block
		raise ArgumentError, 'either operator or block must be given' unless operator or block

		block = block || -> (value){value.send(operator)}
		my_reduce([]) do |arr, value|
			arr << block.call(value)
		end
	end
end
class Array 
	include MyEnumerable
end
puts 			arra.simple_reduce(0) {|total, num| total+num }
puts [1,2,3,4].simple_reduce(0) {|total, num| total+num}
puts 		 [1,2,3,4].my_reduce(0) {|total, num| total+num}
puts 		 [1,2,3,4].my_reduce(0, :+)

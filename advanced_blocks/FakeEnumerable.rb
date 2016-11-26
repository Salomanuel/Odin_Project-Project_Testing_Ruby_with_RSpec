module FakeEnumerable
	def map()					
		#out = []
		#each { |e| out << yield(e) }
		#out										#EQUIVALENT ONE LINER
		[].tap { |out| each { |e| out << yield(e) } } 
	end
	def select()
		[].tap { |out| each { |e| out << e if yield(e) } }
	end
	def sort_by()
		map { |a| [yield(a), a] }.sort.map { |a| a[1] }
	end
	def reduce(operation_or_value = nil)
		case operation_or_valuez
		when Symbol
			return reduce { |s,e| s.send(operation_or_value, e) }
		when nil then	acc = nil
		else 
			acc = operation_or_value
		end

		each do |a|
			if acc.nil?
				acc = a
			else
				acc = yield(acc, a)
			end
		end

		return acc
	end
end

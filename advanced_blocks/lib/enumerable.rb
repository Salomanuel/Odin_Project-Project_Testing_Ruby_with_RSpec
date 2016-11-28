module Enumerable
	def my_each(&block)
		i = 0
		while i < self.size
			yield(self[i])
			i+=1
		end
		return self
	end

	def my_each_with_index(&block)
		i = 0
		self.my_each do |x|
			yield x, i
			i+=1
		end
		return self
	end

	def my_select(&block)
		result = []
		self.my_each { |element| result << element if yield(element) }
		return result
	end

	def my_all?(&block)
		list = []
		self.my_each do |element|
			list << element if yield(element)
		end
		return list.size == self.size ? true : false
	end

	def my_any?(&block)
		self.my_each do |element| 
			return true if yield(element)
		end
		return false
	end

	def my_map(&block)
		result = []
		my_each { |element| result << block.call(element) }
		result
	end

	def my_find(&block)
		result = nil
		found  = false
		my_each do |element|
			if block.call(element)
				result = element
				found  = true
				break
			end
		end
		return result
	end
end

# include Enumerable
# # (1..10).to_a.my_each { |i| puts i*2 }
# arra = (1..10).to_a
# puts arra.my_select{ |e| e % 2 == 0 }
# puts arra.join(" ")
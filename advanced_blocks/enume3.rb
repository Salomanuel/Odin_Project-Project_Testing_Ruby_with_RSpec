require 'minitest/autorun'
require 'minitest/pride'

module CustomEnumerable
	def map(&block)
		result = []
		each do |element|
			result << block.call(element)
		end
		result
	end
end

class ArrayWrapper
	include CustomEnumerable

	def initialize(*items)
		@items = items.flatten
	end

	def each(&block)
		@items.each(&block)
		self
	end

	def ==(other)
		@items == other
	end

	def find(ifnone =nil, &block)
		result = nil
		found  = false
		each do |element|
			if block.call(element)
				result = element
				found  = true
				break
			end
		end
		found ? result : ifnone and ifnone.call
	end
end

describe "freaking enumerable" do
	it 'maps the number multiplying them by 2' do
		skip
		items  = ArrayWrapper.new(1,2,3,4)
		result = items.map { |n| n*2 }
		expect(result).to eq([2,4,6,8])
	end
end
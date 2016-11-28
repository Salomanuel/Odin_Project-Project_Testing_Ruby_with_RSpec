require "spec_helper"

describe Enumerable do
	before :each do
			@each    = []
			@my_each = []
			@randi =	rand(30).times.map{ rand(50) }
	end

	describe "#my_each" do
		it "behaves like #each" do
			@randi.my_each{ |i| @my_each << i*2  }
			@randi.each   { |i| @each    << i*2 }
			expect(@my_each).to eql(@each)
		end
	end
	describe "#my_each_with_index" do
		it "behaves like #each" do
			@randi.my_each_with_index{ |i| @my_each << i*2 }
			@randi.each 						 { |i| @each    << i*2 }
			expect(@my_each).to eql(@each)
		end

		it "has an index" do
			@randi.my_each_with_index{ |k,i| @my_each << k + i }
			@randi.each_with_index 	 { |k,i| @each    << k + i }
			expect(@my_each).to eql(@each)
		end
	end
	describe "#my_select" do
		it "selects even numbers" do
			expected = @randi.select 		{ |n| n % 2 == 0 }
			result   = @randi.my_select	{ |n| n % 2 == 0 }
			expect(result).to eql(expected)
		end
	end
	describe "#my_map" do
		it "maps the numbers multiplying them by 2" do
			my_map = @randi.my_map { |n| n * 2 }
			map 	 = @randi.map 	 { |n| n * 2 }
			expect(my_map).to eql(map)
		end
	end
	describe "#my_find" do
		it "finds the damn thing" do
			result = @randi.my_find { |e| e == @randi[3] }
			expect(result).to eql(@randi[3])
		end
		it "return nil if no item is found" do
			result = @randi.my_find { |e| e < 1 }
			expect(result).to be_nil
		end
	end
end
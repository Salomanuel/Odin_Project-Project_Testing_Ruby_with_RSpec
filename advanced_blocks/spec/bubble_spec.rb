require "spec_helper"

describe "#bubble" do
	it "does a tiny sort" do
		expect(bubble_sort([3,2])).to eql([2,3])
	end

	it "does a bigger sort" do
		unsorted = [4,3,78,2,0,21]
		sorted 	 = [0,2,3,4,21,78]
		expect(bubble_sort(unsorted)).to eq(sorted)
	end

	it "sorts a big, random array" do
		random = Array.new(rand(100), 50)
		expect(bubble_sort(random)).to eql(random.sort)
	end
end

describe "#bubble_sort_by" do
	it "sorts three words"	do
		expect(bubble_sort_by(["hi", "hello", "hey"]) { |left, right| left.length - right.length }).to eql(["hello", "hey", "hi"])
  end

  it "sorts those words the other way too" do
  	expect(bubble_sort_by(["hi", "hello", "hey"]) { |left, right| left.length + right.length }).to eql(["hi", "hey", "hello"])
  end
end
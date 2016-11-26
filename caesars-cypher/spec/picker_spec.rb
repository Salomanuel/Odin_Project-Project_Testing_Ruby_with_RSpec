require "spec_helper"

describe "#new_stock_picker" do
	it "should return [1,4]" do
		prices = [17,3,6,9,15,8,6,1,10]
		expect(new_stock_picker(prices)).to eq([1,4])
	end

	it "should return [2,4]" do
		prices = [4,6,3,9,14]
		expect(new_stock_picker(prices)).to eq([2,4])
	end
end

describe "#talking_stock_picker" do
	it "should return a nice sentence" do
		prices = [17,3,6,9,15,8,6,1,10]
		answer = "best days are 1 and 4 for a profit of $15 - $3 = $12"
		expect(talking_stock_picker(prices)).to eq(answer)
	end
end
# test if all words are still there
# test if it's different every time
require "spec_helper"
describe  "word shuffler" do
	before :all do
		@text = "Now that you’ve finished your new sorting algorithm, how
						about the opposite? Write a shuffle method that takes an array and
						returns a totally shuffled version. As always, you’ll want to test it,
						but testing this one is trickier: How can you test to make sure you
						are getting a perfect shuffle? What would you even say a perfect
						shuffle would be? Now test for it."
	end

	it "still has all the words" do
		expect(shuffle(@text.split("")).length).to eql(@text.split("").length)
	end

	it "is different every time" do
		first_time  = shuffle(@text.split(""))
		second_time = shuffle(@text.split(""))
		expect(first_time).not_to be eql(second_time)
	end
end
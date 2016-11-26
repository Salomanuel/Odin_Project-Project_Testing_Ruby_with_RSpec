=begin
Implement a method #stock_picker that takes in an array of stock prices, 
one for each hypothetical day. 
It should return a pair of days representing the best day to buy 
and the best day to sell. Days start at 0.

    > stock_picker([17,3,6,9,15,8,6,1,10])
    => [1,4]  # for a profit of $15 - $3 == $12

Quick Tips:

    You need to buy before you can sell
    Pay attention to edge cases like when the lowest day is the last day 
    or the highest day is the first day.
=end

def stock_picker(daily_prices)
days   = daily_prices
prices = daily_prices

days.length.times do |i|
	daily_sum = []
	
	prices.length.times do |j|
		puts "days and prices #{days[i]} #{days[j]}"
		#daily_sum.push(days[i]-days[j])
	end
	puts
end

return "I'm done here"

end

puts stock_picker([4,6,3,9,14])
#puts stock_picker([17,3,6,9,15,8,6,1,10])

=begin
# 1 Starts from the end of the array
# 2 Starts from the beginning of the array
# 3 Breaks the flow if the index of the number coming from the beginning 
#   is equal to or bigger that that of the number coming from the end
# 4 Subtracts the number coming from the beginning from the one coming from the end. 
#   If the difference is smaller than zero, doesn't add them to the extended array. 
#   If not, adds the number coming from the beginning, the one coming from the end, 
#   and their difference together as an array into the extended array
# 5 Makes the inner arrays into a single array(flat)
# 6 Repeats the given block for the amount of one third of the size of the flat array
# 7 Finds the differences in the flat array and adds them to the diffs (differences) array
# 8 Every third element is a difference
# 9 Finds the index of the biggest number in the diffs array, multiplies 
#   it with three in order to find the stock to be bought in the flat array and adds one to 
#   the product in order to find the stock to be sold in the flat array and then finds 
#   the indexes of the stocks to be bought and to be sold in the first array and adds them to the picked array

=end
=begin
Implement a method #stock_picker that takes in an array of stock prices, 
one for each hypothetical day. 
It should return a pair of days representing the best day to buy 
and the best day to sell. Days start at 0.

	> stock_picker([17,3,6,9,15,8,6,1,10])
	=> [1,4]  # for a profit of $15 - $3 == $12
=end

def new_stock_picker(prices)
	max_days  = prices.length
	best_deal = 0
	best_days = []
	prices.each_index do |i|
		(i+1).upto(max_days-1) do |j|
			if (prices[j] - prices[i]) > best_deal
				best_deal =  prices[j] - prices[i]
				best_days = [i,j]
			end
		end
	end
	return best_days
end

def talking_stock_picker(prices)
	days = new_stock_picker(prices)
	answer_days = "best days are #{days[0]} and #{days[1]}"
	profit = prices[days[1]] - prices[days[0]]
	answer_profit = "for a profit of $#{prices[days[1]]} - $#{prices[days[0]]} = $#{profit}"
	return "#{answer_days} #{answer_profit}"
end
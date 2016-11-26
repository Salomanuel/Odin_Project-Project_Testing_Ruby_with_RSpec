def picker2(prices)
	week_results  = []					#index is the buy day and value is the sell day
	prices.length.times do |i|	#i is buy day
		day_results = []
		prices.length.times do |j|#j is sell day	
			if i < j								#L'IF E' IMPORTANTE!
				day_results << prices[i] - prices[j] 
			else
				day_results << prices[i]
			end
		end
		week_results 		<< day_results.index(day_results.min)
	end
	week_results.pop
	week_results_math = []
	week_results.each_with_index do |i,j|
		week_results_math << (prices[j]-prices[i])
	end

	best_deal = week_results_math.index(week_results_math.min)

	result 		= [best_deal,week_results[best_deal]]
	math 			= "#{prices[result[1]]}$ - #{prices[result[0]]}$ = #{prices[result[1]]-prices[result[0]]}$"
	puts "trade #{result} for a profit of #{math}"
end

def interface(prices)
	picker2(prices)
end

prices 		 		= [17,3,6,9,15,8,6,1,10]
puts picker2(prices)
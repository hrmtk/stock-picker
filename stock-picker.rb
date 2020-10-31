def stock_picker(prices)
	best_day = Array.new
	length = prices.length - 1
	profit = 0

	for i in 0...(length)
		for j in (i+1)..(length)
			if (profit < prices[j] - prices[i])
				profit = prices[j] - prices[i]
				best_day[0] = i
				best_day[1] = j
			end
		end
	end
	best_day
end

p stock_picker([17,3,6,9,15,8,6,1,10])


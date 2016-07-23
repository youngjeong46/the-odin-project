def stock_picker(daily_price)
	profit=0
	output=[]
	for i in 0..(daily_price.length-1)
		for j in i..(daily_price.length-1)
			diff = daily_price[j]-daily_price[i]
			if (diff > profit)
				profit = diff
				output[0]=i
				output[1]=j
			end
		end
	end
	output
end

stock_picker([9,17,10,15,2,13])
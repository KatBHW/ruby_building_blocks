def stock_picker(prices)

best_profit, buy_day, sell_day = 0, 0, 0

  prices.each_with_index do |first_value, first_index| #iterate over each index and its associated value
    first_index.upto(prices.length - 1) do | second_index| #find and iterate over indices AFTER the first index 
      profit = prices[second_index] - first_value
      if profit > best_profit 
        best_profit, buy_day, sell_day = profit, first_index, second_index
      end
    end  
  end
  
  puts "Your best profit is £#{best_profit}"
  puts "You should buy on day #{buy_day}"
  puts "You should sell on day #{sell_day}"
  
end    

stock_picker([14, 78, 3, 22, 47, 2, 68])


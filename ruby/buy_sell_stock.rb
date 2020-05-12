# [7,1,5,3,6,4] => 5
# [7,6,4,3,1] => 0

def max_profit(prices)
  min_val = prices[0] # 1
  max_profit = 0 # 5

  prices.length.times do |i|
    if prices[i] < min_val
      min_val = prices[i]
    end

    if (prices[i] - min_val) > max_profit
      max_profit = prices[i] - min_val
    end
  end

  return max_profit
end

p max_profit([7,1,5,3,6,4]) # 5
p max_profit([7,6,4,3,1]) # 0
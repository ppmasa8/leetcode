# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    sum = 0
    prices.each_with_index do |val, index|
        if prices[index+1] && prices[index+1] > val
            sum += prices[index+1] - val
        end
    end
    sum
end

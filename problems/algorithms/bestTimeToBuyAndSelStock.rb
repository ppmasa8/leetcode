# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    max = 0
    min = prices[0]
    prices.each do |price|
        if price > min
            max = [max, price - min].max
        else
            min = price
        end
    end
    max
end

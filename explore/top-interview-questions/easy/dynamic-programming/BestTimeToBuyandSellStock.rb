# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    max_pro = pro = i = 0
    while i < prices.size-1 
        pro = [0, pro+= prices[i+1]-prices[i]].max
        max_pro = [max_pro, pro].max
        i+=1
    end
    max_pro
end
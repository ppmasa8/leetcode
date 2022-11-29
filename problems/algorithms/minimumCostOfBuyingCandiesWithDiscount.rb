# @param {Integer[]} cost
# @return {Integer}
def minimum_cost(cost)
    cost.sort!.reverse!
    cnt = 0
    (0...cost.size).each do |i|
        cnt += cost[i] if (i+1) % 3 != 0
    end
    return cnt
end

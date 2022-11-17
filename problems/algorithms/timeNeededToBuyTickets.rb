# @param {Integer[]} tickets
# @param {Integer} k
# @return {Integer}
def time_required_to_buy(tickets, k)
   time = 0
    while true
        (0...tickets.size).each do |i|
            if tickets[i] > 0
                time += 1
                tickets[i] -= 1
                return time if i == k and tickets[i] == 0
            end
        end
    end
end

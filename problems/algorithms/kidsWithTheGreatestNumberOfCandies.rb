# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
    max = candies.max
    candies.each.map{|c| c + extra_candies >= max }
end

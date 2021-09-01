# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    nums.each.map{|i| i**2 }.sort!
end
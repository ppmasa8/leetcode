# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    nums.each.map{|num| num**2 }.sort
end

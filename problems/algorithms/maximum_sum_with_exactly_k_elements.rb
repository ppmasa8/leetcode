# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def maximize_sum(nums, k)
    max, sum = nums.max, 0; (0...k).each{|i| sum += max + i}; return sum
end

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def smallest_range_i(nums, k)
    min, max = nums.minmax
    [max-min-2*k, 0].max
end

# @param {Integer[]} nums
# @return {Integer}
def smallest_equal(nums)
    (0...nums.size).each{|i| return i if i % 10 == nums[i] }
    return -1
end

# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    total = nums.sum
    cnt = 0
    (0...nums.size).each do |i|
        return i if cnt == total - cnt - nums[i]
        cnt += nums[i]
    end
    return -1
end

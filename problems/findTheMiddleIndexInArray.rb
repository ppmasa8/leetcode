# @param {Integer[]} nums
# @return {Integer}
def find_middle_index(nums)
    total = nums.sum
    left = nums[0]
    return 0 if total - left == 0
    total -= left
    (1...nums.size).each do |i|
        total -= nums[i]
        return i if left == total
        left += nums[i]
    end
    return -1
end

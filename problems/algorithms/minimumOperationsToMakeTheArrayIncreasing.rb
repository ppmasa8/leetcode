# @param {Integer[]} nums
# @return {Integer}
def min_operations(nums)
    n = nums.size
    cnt = 0
    (0...n).each do |i|
        next if i == 0
        if nums[i-1] >= nums[i]
            cnt += nums[i-1] - nums[i] + 1
            nums[i] = nums[i-1] + 1
        end
    end
    return cnt
end

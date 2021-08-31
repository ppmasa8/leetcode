# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    n = nums.size
    return 0 if n == 0
    return nums[0] if n==1 
    return nums.max if n == 2
    dp = []; dp[0] = nums[0]; dp[1] = [nums[1], dp[0]].max
    (2..n-1).each do |i| 
        dp[i] = [nums[i]+ dp[i-2], dp[i-1]].max
    end
    dp[n-1]
end
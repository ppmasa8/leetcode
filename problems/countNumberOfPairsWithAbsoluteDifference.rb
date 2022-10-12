# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_k_difference(nums, k)
    n = nums.size
    cnt = 0
    (0...n).each do |i|
        (i+1...n).each do |j|
            cnt += 1 if (nums[i] - nums[j]).abs == k
        end
    end
    cnt
end

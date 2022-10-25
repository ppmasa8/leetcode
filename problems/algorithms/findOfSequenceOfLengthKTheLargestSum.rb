# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_subsequence(nums, k)
    target = nums.sort.reverse[0..k-1]
    res = []
    (0...nums.size).each do |i|
        num_idx = target.index(nums[i])
        if num_idx
            res << nums[i]
            target.delete_at(num_idx)
            return res if target == []
        end
    end
end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    return [nums.index(target), nums.size-1-nums.reverse.index(target)] if nums.include?(target)
    return [-1, -1]
end
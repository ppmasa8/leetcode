# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    nums.uniq != nums
end
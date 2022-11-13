# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
    hash = Hash.new()
    nums.each_with_index do |num, idx|
        if hash[num]
            return true if (idx - hash[num]).abs <= k
        end
        hash[num] = idx
    end
    return false
end

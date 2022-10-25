# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    return 0 if nums[0] > target
    (0...nums.size).each do |i|
        if nums[i] == target || nums[i] > target
            return i
            exit
        end
    end
    nums.size
end

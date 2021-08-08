# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    start, last = 0, nums.size-1
    while start <= last
        half = (start + last)/2
        if nums[half] == target
            return half
            exit
        elsif nums[half] < target
            start = half + 1
        else
            last = half - 1
        end
    end
    return -1
end
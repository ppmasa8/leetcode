# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    nums = []
    nums << nums1
    nums << nums2
    nums.flatten!
    nums.sort!
    length = nums.size
    if length.odd?
        return nums[length/2]
    else
        return (nums[length/2-1].to_f+nums[length/2].to_f)/2.to_f
    end
end

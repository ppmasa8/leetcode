# @param {Integer[]} nums
# @param {Integer} target
# @param {Integer} start
# @return {Integer}
def get_min_distance(nums, target, start)
    arr = []
    (0...nums.size).each{|i| arr << (i - start).abs if target == nums[i] }
    return arr.min
end

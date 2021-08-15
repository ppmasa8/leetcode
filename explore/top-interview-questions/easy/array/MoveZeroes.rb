# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    len = nums.size
    nums.delete_if{|num| num == 0}
    (len-nums.size).times{nums << 0}
    nums
end
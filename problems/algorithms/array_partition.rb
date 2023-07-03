# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
    sorted_nums = nums.sort
    sum = 0
    (0...sorted_nums.size).each do |i|
        sum += sorted_nums[i] if i % 2 == 0
    end
    sum
end

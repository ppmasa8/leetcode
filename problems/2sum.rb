# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    dict = {}
    nums.each_with_index do |num, idx|
        return dict[target-num], idx if dict[target-num]
        dict[num] = idx
    end 
end

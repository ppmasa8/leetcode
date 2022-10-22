# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
    res = []
    nums.each_with_index do |n, i|
        res.insert(index[i], n)
    end
    res
end

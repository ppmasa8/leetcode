# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
    res = []
    nums.each.with_index{|n, idx| res.insert(index[idx], n)}
    res 
end

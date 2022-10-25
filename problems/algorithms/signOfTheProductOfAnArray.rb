# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
    result = 1
    nums.each do |n|
        if n == 0
            return 0
        end
        
        result *= n
    end
    return result > 0 ? 1 : -1
end

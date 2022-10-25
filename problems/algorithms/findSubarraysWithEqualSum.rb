# @param {Integer[]} nums
# @return {Boolean}
def find_subarrays(nums)
    hash = Hash.new
    (0...nums.size-1).each do |i|
        if hash[nums[i]+nums[i+1]] != nil
            return true
        else
            hash[nums[i]+nums[i+1]] = 1
        end
    end
    false
end

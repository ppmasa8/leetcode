# @param {Integer[]} nums
# @param {Integer} key
# @return {Integer}
def most_frequent(nums, key)
    hash = Hash.new(0)
    (0...nums.size-1).each do |i|
        hash[nums[i+1]]+=1 if nums[i] == key
    end
    hash.key(hash.values.max)
end

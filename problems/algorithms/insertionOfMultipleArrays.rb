# @param {Integer[][]} nums
# @return {Integer[]}
def intersection(nums)
    hash = Hash.new(0)
    n = nums.size
    res = []
    nums.each do |array|
        array.uniq.each do |n|
            hash[n] += 1
        end
    end
    
    hash.each{|k, v| res << k if v == n }
    
    return res.sort
end

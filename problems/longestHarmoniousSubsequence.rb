# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
    hash = Hash.new(0)
    max = 0
    nums.each{|n| hash[n] += 1 }
    hash.each{|k, v| max = [hash[k] + hash[k+1], max].max if hash[k+1] != 0 }
    return max
end

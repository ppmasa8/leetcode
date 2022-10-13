# @param {Integer[]} nums
# @return {Integer}
def repeated_n_times(nums)
    n = nums.size / 2
    hash = Hash.new(0)
    nums.each{|n| hash[n] += 1 }
    hash.each do |k, v|
        return k if v == n
    end
end

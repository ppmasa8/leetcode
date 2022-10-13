# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
    hash = Hash.new(0)
    sum = 0
    nums.each{|n| hash[n] += 1 }
    hash.each do |k,v|
        sum += k.to_i if v == 1
    end
    sum
end

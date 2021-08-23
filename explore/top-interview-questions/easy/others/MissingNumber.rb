# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    list = []
    (0..nums.size+1).each{|i| list << i unless nums.include?(i)}
    list.first
end
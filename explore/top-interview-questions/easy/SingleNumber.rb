# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    hash = Hash.new(0)
    nums.each{|num| hash[num]+=1}
    hash.select{|k,v| return k if v == 1}
end
# @param {Integer[]} nums
# @return {Integer[]}
def number_of_pairs(nums)
    hash = Hash.new(0)
    nums.each{|num|hash[num]+=1}
    pair_num, not_much_num = 0, 0
    hash.each do |_,v|
        pair_num += v / 2
        not_much_num += 1 if v % 2 == 1
    end
    [pair_num, not_much_num]
end

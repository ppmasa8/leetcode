# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    cnt = 0; list = []
    nums.each do |i|
        p i
        cnt += 1 if i == 1
        list << cnt and cnt = 0 if i == 0
    end
    list << cnt
    list.max
end
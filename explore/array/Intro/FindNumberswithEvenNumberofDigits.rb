# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
    cnt = 0
    nums.each do |i|
        cnt += 1 if i.to_s.size.even?
    end
    cnt
end
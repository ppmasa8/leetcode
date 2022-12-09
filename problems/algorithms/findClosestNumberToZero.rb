# @param {Integer[]} nums
# @return {Integer}
def find_closest_number(nums)
    min = 100000000000
    ans = 0
    nums.uniq.each do |num|
        if num.abs < min
            min = num.abs
            ans = num
        elsif min == num.abs
            ans = [num, ans].max
        end
    end
    ans
end

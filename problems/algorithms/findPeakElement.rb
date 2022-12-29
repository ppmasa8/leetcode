# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
    max = -1000000000000000000
    res = 0
    nums.each_with_index do |n, idx|
        if max < n
            max = n
            res = idx
        end
    end
    res
end

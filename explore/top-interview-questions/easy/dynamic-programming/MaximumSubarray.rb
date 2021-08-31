# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    max_s = nums[0]
    s = nums[0]
    nums[1..-1].each do |e|
        s = [e, e + s].max
        max_s = s if s > max_s
    end
    max_s
end
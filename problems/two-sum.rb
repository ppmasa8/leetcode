# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  nums_size = nums.size
  (0..nums_size-1).each do |i|
    (i+1..nums_size-1).each do |j|
      return [i, j] if nums[i] + nums[j] == target
    end
  end
end

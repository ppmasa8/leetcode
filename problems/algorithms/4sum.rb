def four_sum(nums, target)
    nums.combination(4).to_a.map{|arr| arr.sort if arr.sum == target}.compact.uniq
end

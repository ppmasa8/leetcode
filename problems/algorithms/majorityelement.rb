def majority_element(nums)
    hash = Hash.new(0)
    nums.each do |n|
      hash[n] += 1
    end
    hash.max_by{|_, v| v }[0]
end

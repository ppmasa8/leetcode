# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
def answer_queries(nums, queries)
    nums.sort!
    res = []
    (1...nums.size).each do |i|
        nums[i] += nums[i-1]
    end
    
    queries.each_with_index do |q, idx|
        lo, hi = 0, nums.size
        while lo < hi
            mid = lo + ((hi - lo) >> 1)
            
            if nums[mid] <= q
                lo = mid + 1
            else
                hi = mid
            end
        end
        res[idx] = lo
    end
    
    return res
end

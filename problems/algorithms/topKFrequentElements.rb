# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    hash = Hash.new(0)
    ans = []
    nums.each do |num|
        hash[num] += 1
    end
    hash = hash.sort_by{|_, v| -v }
    (0...k).each do |i|
        ans << hash[i][0]
    end
    ans
end

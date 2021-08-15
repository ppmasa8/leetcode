# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
    hash = Hash.new(0)
    res  = []
    nums1.each{|n| hash[n]+=1}
    nums2.each{|n| res << n and hash[n]-=1 if hash[n]>0}
    res
end
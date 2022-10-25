# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    if nums == "[]"
        return []
    else
        nums.uniq!
        nums.size if !nums.nil?
    end
end

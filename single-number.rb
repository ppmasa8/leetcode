# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    nums.each do |num|
        if nums.count(num) == 1
            return num
            exit
        end
    end 
end

# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
    cnt = 0
    res = []
    nums.each do |num|
        while num > 9
            num /= 10 
            if num > 9
                cnt += 1
            else
                res << cnt
                cnt = 0
            end
        end
    end
    return res.count{|e| e % 2 == 0 }
end

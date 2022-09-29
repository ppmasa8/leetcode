# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
    hash = Hash.new(0)
    arr.each do |a|
        hash[a] += 1
    end
    
    k-=1
    
    hash.each do |key, v|
        if v == 1 && k == 0
            return key
        end
        
        if v == 1
            k -= 1
        end
    end
    return ""
end

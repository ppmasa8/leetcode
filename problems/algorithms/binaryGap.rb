# @param {Integer} n
# @return {Integer}
def binary_gap(n)
    n = n.to_s(2)
    return 0 if n.count("1") < 2
    max = 0
    arr = []
    (0...n.size).each do |i|
        arr << i if n[i] == "1"
        
        if arr.size >= 2
            max = [arr[-1] - arr[-2], max].max
        end
    end

    return max
end

# @param {Integer} n
# @return {Integer}
def tribonacci(n)
    return 0 if n == 0
    list = [0, 1, 1]
    (3..n).each do |i|
        list << list[i-3] + list[i-2] + list[i-1]
    end
    return list[n]
end

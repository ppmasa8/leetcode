# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
    n = n.to_s(2)
    (1...n.size).each{|i| return false if n[i] == n[i-1] }
    return true    
end

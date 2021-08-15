# @param {Integer} x
# @return {Integer}
def reverse(x)
    return 0 if x.abs.to_s.reverse.to_i >= 2**31-1
    
    if x.to_s.include?("-")
        return 0 - x.to_s.reverse.to_i
    else
        return x.to_s.reverse.to_i
    end
end
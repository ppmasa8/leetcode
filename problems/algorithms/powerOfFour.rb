# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
    return true if n == 1
    num = 1
    while n >= num
        return true if n == num
        num *= 4
    end
    return false
end

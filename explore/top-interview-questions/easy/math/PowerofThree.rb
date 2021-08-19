# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
    num = 1
    while n > num
        num *= 3
    end
    num == n
end
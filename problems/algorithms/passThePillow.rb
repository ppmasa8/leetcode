# @param {Integer} n
# @param {Integer} time
# @return {Integer}
def pass_the_pillow(n, time)
    return 1+time if time < n
    res = time % (n-1)
    q   = time / (n-1)
    return n - res if q % 2 != 0
    return 1 + res
end
